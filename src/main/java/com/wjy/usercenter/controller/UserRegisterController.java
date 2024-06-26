package com.wjy.usercenter.controller;

import com.wjy.usercenter.common.Result;
import com.wjy.usercenter.common.Results;
import com.wjy.usercenter.dto.req.UserLoginReq;
import com.wjy.usercenter.dto.req.UserRegisterReq;
import com.wjy.usercenter.dto.resp.UserLoginResp;
import com.wjy.usercenter.dto.resp.UserRegisterResp;
import com.wjy.usercenter.service.UserRegisterService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Api(tags = "用户注册登录接口")
public class UserRegisterController {

    @Autowired
    private UserRegisterService userRegisterService;

    @PostMapping("/user/register")
    @ApiOperation("注册")
    public Result<UserRegisterResp> register(@RequestBody UserRegisterReq UserRegisterReq) {
        return Results.success(userRegisterService.register(UserRegisterReq));
    }

    @PostMapping("/user/login")
    @ApiOperation("登录")
    public Result<UserLoginResp> login(@RequestBody UserLoginReq userLoginReq) {
        return Results.success(userRegisterService.login(userLoginReq));
    }

    @GetMapping("/user/logout")
    @ApiOperation("退出登录")
    public Result<Void> logout(@RequestParam String accessToken) {
        userRegisterService.logout(accessToken);
        return Results.success();
    }


    @GetMapping("/user/check-login")
    @ApiOperation("检查是否登录")
    public Result<UserLoginResp> checkLogin(@RequestParam("accessToken") String accessToken) {
        UserLoginResp result = userRegisterService.checkLogin(accessToken);
        return Results.success(result);
    }
}
