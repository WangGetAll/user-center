package com.wjy.usercenter.controller;

import com.wjy.usercenter.common.Result;
import com.wjy.usercenter.common.Results;
import com.wjy.usercenter.dto.req.UserDeletionReq;
import com.wjy.usercenter.dto.req.UserUpdateReq;
import com.wjy.usercenter.dto.resp.UserQueryActualResp;
import com.wjy.usercenter.dto.resp.UserQueryResp;
import com.wjy.usercenter.service.UserInfoService;
import com.wjy.usercenter.service.UserRegisterService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@Api(tags = "用户信息接口")
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private UserRegisterService userRegisterService;

    /**
     * 根据用户名查询用户信息
     */
    @GetMapping("/user/query")
    public Result<UserQueryResp> queryUserByUsername(@RequestParam("username") String username) {
        return Results.success(userInfoService.getUserByUsername(username));
    }

    /**
     * 检查用户名是否已存在
     */
    @GetMapping("/user/has-username")
    public Result<Boolean> hasUsername(@RequestParam("username") String username) {
        return Results.success(userRegisterService.checkUsernameExist(username));
    }
    /**
     * 根据用户名查询用户无脱敏信息
     */
    @GetMapping("/user/actual/query")
    public Result<UserQueryActualResp> queryActualUserByUsername(@RequestParam("username") String username) {
        return Results.success(userInfoService.queryActualUserByUsername(username));
    }

    /**
     * 修改用户
     */
    @PostMapping("/user/update")
    public Result<Void> update(@RequestBody UserUpdateReq userUpdateReq) {
        userInfoService.update(userUpdateReq);
        return Results.success();
    }

    /**
     * 注销用户
     */
    @PostMapping("/api/user-service/deletion")
    public Result<Void> deletion(@RequestBody UserDeletionReq requestParam) {
        userInfoService.deletion(requestParam);
        return Results.success();
    }

}
