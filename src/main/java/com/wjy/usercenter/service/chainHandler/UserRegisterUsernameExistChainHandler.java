package com.wjy.usercenter.service.chainHandler;

import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ClientException;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.service.UserRegisterCheckHandler;
import com.wjy.usercenter.service.UserRegisterService;
import com.wjy.usercenter.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Slf4j
@Order(1)
@Component
public class UserRegisterUsernameExistChainHandler implements ChainHandler<UserRegisterReq> {
    @Autowired
    private UserService userService;

    @Override
    public void handler(UserRegisterReq req) {
        if (userService.checkUsernameExist(req.getUsername())) {
            log.info("user-center.user-register: username registered, username is {}", req.getUsername());
            throw new ClientException(UserRegisterErrorCodeEnum.USERNAME_REGISTERED);
        }
    }
}
