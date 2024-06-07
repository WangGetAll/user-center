package com.wjy.usercenter.service.chainHandler;

import com.wjy.usercenter.common.errorCode.UserRegisterErrorCodeEnum;
import com.wjy.usercenter.common.exception.ClientException;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.service.UserRegisterCheckHandler;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.util.Objects;
@Order(0)
@Component
public class UserRegisterParamNotNullChainHandler implements ChainHandler<UserRegisterReq> {
    @Override
    public void handler(UserRegisterReq userRegisterReq) {
        if (Objects.isNull(userRegisterReq.getUsername())) throw new ClientException(UserRegisterErrorCodeEnum.USER_NAME_NULL);
        if (Objects.isNull(userRegisterReq.getPassword())) throw new ClientException(UserRegisterErrorCodeEnum.PASSWORD_NULL);
        if (Objects.isNull(userRegisterReq.getPhone())) throw new ClientException(UserRegisterErrorCodeEnum.PHONE_NULL);
        if (Objects.isNull(userRegisterReq.getIdType())) throw new ClientException(UserRegisterErrorCodeEnum.ID_TYPE_NULL);
        if (Objects.isNull(userRegisterReq.getIdCard())) throw new ClientException(UserRegisterErrorCodeEnum.ID_CARD_NULL);
        if (Objects.isNull(userRegisterReq.getMail())) throw new ClientException(UserRegisterErrorCodeEnum.MAIL_NULL);
        if (Objects.isNull(userRegisterReq.getRealName())) throw new ClientException(UserRegisterErrorCodeEnum.REAL_NAME_NULL);
    }
}
