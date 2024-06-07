package com.wjy.usercenter.service;

import cn.hutool.core.util.StrUtil;
import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ServiceException;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.dto.resp.UserRegisterResp;
import com.wjy.usercenter.entity.User;
import com.wjy.usercenter.entity.UserMail;
import com.wjy.usercenter.entity.UserPhone;
import com.wjy.usercenter.mapper.UserMailMapper;
import com.wjy.usercenter.mapper.UserMapper;
import com.wjy.usercenter.mapper.UserPhoneMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Slf4j
@Service
public class UserRegisterService {
    @Autowired
    private UserRegisterCheckHandler userRegisterCheckHandler;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserPhoneMapper userPhoneMapper;

    @Autowired
    private UserMailMapper userMailMapper;

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
        // 新增userEmail
        if (!StrUtil.isNotBlank(user.getMail())) {
            return userRegisterResp;
        }
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

        return userRegisterResp;
    }
}
