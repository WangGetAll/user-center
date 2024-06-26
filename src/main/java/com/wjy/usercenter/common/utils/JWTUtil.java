package com.wjy.usercenter.common.utils;

import com.alibaba.fastjson2.JSON;
import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ServiceException;
import com.wjy.usercenter.dto.UserInfo;
import com.wjy.usercenter.entity.User;
import io.jsonwebtoken.*;
import io.jsonwebtoken.security.AeadAlgorithm;
import io.jsonwebtoken.security.MacAlgorithm;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import static com.wjy.usercenter.common.constant.UserConstant.*;

@Slf4j
public final class JWTUtil {

    // 24 * 60 * 60 * 1000ms
    private static final long EXPIRATION = 86400000L;
    // Bearer 令牌是一种不需要额外加密的访问令牌。持有该令牌的任何人（即 Bearer）都可以访问相应的受保护资源。
    private static final String TOKEN_PREFIX = "Bearer ";
    // 颁发者
    private static final String ISS = "user-center";

    // 签名算法
    private static MacAlgorithm alg = Jwts.SIG.HS256;
    // 密钥
    private static final String SECRET = "wangjiyuwangjiyuwangjiyuwangjiyu";

    private static SecretKey key = new SecretKeySpec(SECRET.getBytes(), "HmacSHA"+256);

    /**
     * 生成用户 Token
     *
     * @param user 用户信息
     * @return 用户访问 Token
     */
    public static String generateAccessToken(User user) {
        UserInfo userInfo = UserInfo.builder()
                .userId(user.getId().toString())
                .username(user.getUsername())
                .realName(user.getRealName())
                .build();

        String jwtToken = Jwts.builder()
                .subject(JSON.toJSONString(userInfo))
                .expiration(new Date(System.currentTimeMillis() + EXPIRATION))
                .id(UUID.randomUUID().toString())
                .issuedAt(new Date())
                .issuer(ISS)
                .signWith(key, alg)
                .compact();
        return TOKEN_PREFIX + jwtToken;
    }

    /**
     * 解析用户 Token
     *
     * @param jwtToken 用户访问 Token
     * @return 用户信息
     */
    public static UserInfo parseJwtToken(String jwtToken) {
        String actualJwtToken = jwtToken.replace(TOKEN_PREFIX, "");
        try {
            Claims payload = Jwts.parser()
                    .verifyWith(key).build().parseSignedClaims(actualJwtToken).getPayload();
            Date expiration = payload.getExpiration();
            if (expiration.after(new Date())) {
                String subject = payload.getSubject();
                return JSON.parseObject(subject, UserInfo.class);
            }
        } catch (Exception e) {
            throw new ServiceException(UserRegisterErrorCodeEnum.JWT_PARSER_ERROR);
        }
        return null;
    }
}