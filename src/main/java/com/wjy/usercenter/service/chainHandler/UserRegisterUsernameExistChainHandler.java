package com.wjy.usercenter.service.chainHandler;

import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ClientException;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.service.UserRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserRegisterUsernameExistChainHandler implements ChainHandler<UserRegisterReq>{

    @Autowired
    private UserRegisterService userRegisterService;

    @Override
    public void handler(UserRegisterReq req) {
        if (userRegisterService.checkUsernameExist(req.getUsername())) {
            throw  new ClientException(UserRegisterErrorCodeEnum.USERNAME_REGISTERED);
        }
    }

    @Override
    public int getOrder() {
        return 1;
    }
}
