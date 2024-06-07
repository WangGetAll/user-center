package com.wjy.usercenter.service.chainHandler;

import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ClientException;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.service.UserRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserRegisterMultipleDeletionChainHandler implements ChainHandler<UserRegisterReq> {
    @Autowired
    private UserRegisterService userRegisterService;

    private static final int MaxDeletionCount = 5;

    @Override
    public void handler(UserRegisterReq req) {
        Integer userDeletionCount = userRegisterService.getUserDeletionCount(req.getIdType(), req.getIdCard());
        if (userDeletionCount > MaxDeletionCount) throw new ClientException(UserRegisterErrorCodeEnum.MAX_DELETION);

    }

    @Override
    public int getOrder() {
        return 2;
    }
}
