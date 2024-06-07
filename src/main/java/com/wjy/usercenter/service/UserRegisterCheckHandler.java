package com.wjy.usercenter.service;

import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.service.chainHandler.ChainHandler;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.annotation.AnnotationAwareOrderComparator;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Component
public class UserRegisterCheckHandler implements ApplicationContextAware {
    private final List<ChainHandler<UserRegisterReq>> userRegisterChainHandlerList = new ArrayList<>();;

    public void doChain(UserRegisterReq userRegisterReq) {
        userRegisterChainHandlerList.forEach(chainHandler -> chainHandler.handler(userRegisterReq));
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        Collection<ChainHandler> chainHandlers = applicationContext.getBeansOfType(ChainHandler.class).values();
        chainHandlers.forEach(userRegisterChainHandlerList::add);
        AnnotationAwareOrderComparator.sort(userRegisterChainHandlerList);
    }
}