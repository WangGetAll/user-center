package com.wjy.usercenter.service;

import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.service.chainHandler.ChainHandler;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserRegisterCheckHandler {
    private static List<ChainHandler<UserRegisterReq>> userRegisterChainHandlerList = new ArrayList<>(3);

    public static void register(ChainHandler<UserRegisterReq> userRegisterChainHandler) {
        userRegisterChainHandlerList.set(userRegisterChainHandler.getOrder(), userRegisterChainHandler);
    }

    public void doChain(UserRegisterReq userRegisterReq) {
        userRegisterChainHandlerList.forEach(chainHandler -> chainHandler.handler(userRegisterReq));
    }
}