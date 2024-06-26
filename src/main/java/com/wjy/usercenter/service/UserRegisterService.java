package com.wjy.usercenter.service;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.wjy.usercenter.common.enums.DelEnum;
import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ServiceException;
import com.wjy.usercenter.common.utils.JWTUtil;
import com.wjy.usercenter.dto.UserInfo;
import com.wjy.usercenter.dto.req.UserLoginReq;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.dto.resp.UserLoginResp;
import com.wjy.usercenter.dto.resp.UserRegisterResp;
import com.wjy.usercenter.entity.User;
import com.wjy.usercenter.entity.UserMail;
import com.wjy.usercenter.entity.UserPhone;
import com.wjy.usercenter.entity.UserReuse;
import com.wjy.usercenter.mapper.UserMailMapper;
import com.wjy.usercenter.mapper.UserMapper;
import com.wjy.usercenter.mapper.UserPhoneMapper;
import com.wjy.usercenter.mapper.UserReuseMapper;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RBloomFilter;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

import static com.wjy.usercenter.common.constant.RedisKeyConstant.USER_REGISTER_USERNAME_REUSE;


@Slf4j
@Service
public class UserRegisterService {
    @Autowired
    private RBloomFilter<String> userRegisterCachePenetrationBloomFilter;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private UserRegisterCheckHandler userRegisterCheckHandler;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserPhoneMapper userPhoneMapper;

    @Autowired
    private UserMailMapper userMailMapper;

    @Autowired
    private UserReuseMapper userReuseMapper;

    @Transactional(rollbackFor = Exception.class)
    public UserRegisterResp register(UserRegisterReq userRegisterReq) {
        // 检查注册参数，包括：非空、用户名被占用、多次注销
        userRegisterCheckHandler.doChain(userRegisterReq);
        // 新增user
        User user = new User();
        BeanUtils.copyProperties(userRegisterReq, user);
        try {
            int insert = userMapper.insert(user);
            if (insert < 1) {
                log.error("user-center.user-register: db error, user is {}", user);
                throw new ServiceException(UserRegisterErrorCodeEnum.USER_REGISTER_FAIL);
            }
        } catch (DuplicateKeyException e) {
            log.error("user-center.user-register: username registered, user is {}", user);
            throw new ServiceException(UserRegisterErrorCodeEnum.USERNAME_REGISTERED);
        }

        // 新增userPhone
        UserPhone userPhone = UserPhone.builder()
                .phone(user.getPhone())
                .username(user.getUsername())
                .build();
        try {
            int insert = userPhoneMapper.insert(userPhone);
            if (insert < 1) {
                log.error("user-center.user-register: db error, userPhone is {}", userPhone);
                throw new ServiceException(UserRegisterErrorCodeEnum.USER_REGISTER_FAIL);
            }
        } catch (DuplicateKeyException e) {
            log.error("user-center.user-register: phone registered, userPhone is {}", userPhone);
            throw new ServiceException(UserRegisterErrorCodeEnum.PHONE_REGISTERED);
        }
        UserRegisterResp userRegisterResp = new UserRegisterResp();
        BeanUtils.copyProperties(userRegisterReq, userRegisterResp);
        if (!StrUtil.isNotBlank(user.getMail())) {
            return userRegisterResp;
        }

        // 新增userEmail
        UserMail userMail = UserMail.builder()
                .mail(user.getMail())
                .username(user.getUsername())
                .build();
        try {
            int insert = userMailMapper.insert(userMail);
            if (insert < 1) {
                log.error("user-center.user-register: db error, userMail is {}", userMail);
                throw new ServiceException(UserRegisterErrorCodeEnum.USER_REGISTER_FAIL);
            }
        } catch (DuplicateKeyException e) {
            log.error("user-center.user-register: mail registered, userMail is {}", userMail);
            throw new ServiceException(UserRegisterErrorCodeEnum.PHONE_REGISTERED);
        }

        // 删除名字复用表记录、名字复用缓存。
        String username = user.getUsername();
        userReuseMapper.delete(Wrappers.lambdaQuery(UserReuse.class).eq(UserReuse::getUsername, username));
        redisTemplate.opsForSet().remove(USER_REGISTER_USERNAME_REUSE, username);

        // username加入布隆过滤器
        userRegisterCachePenetrationBloomFilter.add(username);
        return userRegisterResp;
    }

    public UserLoginResp login(UserLoginReq userLoginReq) {
        String usernameOrMailOrPhone = userLoginReq.getUsernameOrMailOrPhone();
        // 用户名、邮箱、手机号中只有邮箱会有@
        String username = null;
        boolean isMail = false;
        boolean isPhone = false;
        for (int i = usernameOrMailOrPhone.length() - 1; i >= 0; i--) {
            if (usernameOrMailOrPhone.charAt(i) == '@') {
                isMail = true;
                break;
            }
        }
        // 用户名、手机号中用户名的首字母必须是字母
        if (!isMail && !Character.isLetter(usernameOrMailOrPhone.charAt(0))) {
            isPhone = true;
        }
        // 根据邮箱或手机号得到用户名
        if (isMail) {
            log.info("用户的输入是邮箱：{}", usernameOrMailOrPhone);
            LambdaQueryWrapper<UserMail> queryWrapper = Wrappers.lambdaQuery(UserMail.class)
                    .eq(UserMail::getMail, usernameOrMailOrPhone)
                    .eq(UserMail::getDelFlag, DelEnum.NORMAL.code());
            username = Optional.ofNullable(userMailMapper.selectOne(queryWrapper))
                    .map(UserMail::getUsername)
                    .orElseThrow(()-> new ServiceException(UserRegisterErrorCodeEnum.COUNT_PASSWORD_WRONG));
        }
        if (isPhone) {
            log.info("用户的输入是手机号：{}", usernameOrMailOrPhone);
            LambdaQueryWrapper<UserPhone> queryWrapper = Wrappers.lambdaQuery(UserPhone.class)
                    .eq(UserPhone::getPhone, usernameOrMailOrPhone)
                    .eq(UserPhone::getDelFlag, DelEnum.NORMAL.code());
            username = Optional.ofNullable(userPhoneMapper.selectOne(queryWrapper))
                    .map(UserPhone::getUsername)
                    .orElseThrow(()-> new ServiceException(UserRegisterErrorCodeEnum.COUNT_PASSWORD_WRONG));
        }
        if (username == null) {
            log.info("用户的输入是用户名：{}", usernameOrMailOrPhone);
            username = usernameOrMailOrPhone;
        }
        log.info("用户的用户名：{}，用户的密码：{}", username, userLoginReq.getPassword());
        // 根据用户名和密码查库
        LambdaQueryWrapper<User> queryWrapper = Wrappers.lambdaQuery(User.class)
                .eq(User::getUsername, username)
                .eq(User::getPassword, userLoginReq.getPassword())
                .eq(User::getDelFlag, DelEnum.NORMAL.code());
        User user = userMapper.selectOne(queryWrapper);
        if (user == null) {
            throw new ServiceException(UserRegisterErrorCodeEnum.COUNT_PASSWORD_WRONG);
        }
        // 生成JWT token 返回
        String token = JWTUtil.generateAccessToken(user);
        return UserLoginResp.builder()
                .accessToken(token)
                .userId(user.getId().toString())
                .username(user.getUsername())
                .realName(user.getRealName())
                .build();
    }
}
