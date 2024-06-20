package com.wjy.usercenter.service.chainHandler;

import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ClientException;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.service.UserDeletionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Slf4j
@Order(2)
@Component
public class UserRegisterMultipleDeletionChainHandler implements ChainHandler<UserRegisterReq> {
    @Autowired
    private UserDeletionService userDeletionService;

    private static final int MaxDeletionCount = 5;

    @Override
    public void handler(UserRegisterReq req) {
        Long userDeletionCount = userDeletionService.getUserDeletionCount(req.getIdType(), req.getIdCard());
        if (userDeletionCount > MaxDeletionCount) {
            log.info("user-center.user-register: max deletion, user userDeletionCount is {}",  userDeletionCount);
            throw new ClientException(UserRegisterErrorCodeEnum.MAX_DELETION);
        }
    }
}
