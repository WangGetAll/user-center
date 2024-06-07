package com.wjy.usercenter.service;

import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.dto.resp.UserRegisterResp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserRegisterService {
    @Autowired
    private UserRegisterCheckHandler userRegisterCheckHandler;
    public UserRegisterResp register(UserRegisterReq userRegisterReq) {
        // 检查注册参数，包括：非空、用户名被占用、多次注销
        userRegisterCheckHandler.doChain(userRegisterReq);
        return null;
    }

    public Boolean checkUsernameExist(String username) {
        return true;
    }

    public Integer getUserDeletionCount(Integer idType,  String idCard) {
        return 0;
    }
 }
