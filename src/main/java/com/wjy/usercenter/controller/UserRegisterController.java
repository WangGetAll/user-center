package com.wjy.usercenter.controller;

import com.wjy.usercenter.common.Result;
import com.wjy.usercenter.common.Results;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.dto.resp.UserRegisterResp;
import com.wjy.usercenter.service.UserRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserRegisterController {

    @Autowired
    private UserRegisterService userRegisterService;

    @PostMapping("/user/register")
    public Result<UserRegisterResp> register(@RequestBody UserRegisterReq UserRegisterReq) {
        return Results.success(userRegisterService.register(UserRegisterReq));
    }
}
