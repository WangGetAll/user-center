package com.wjy.usercenter.controller;

import com.wjy.usercenter.common.Result;
import com.wjy.usercenter.common.Results;
import com.wjy.usercenter.dto.PassengerActualResp;
import com.wjy.usercenter.dto.req.PassengerRemoveReq;
import com.wjy.usercenter.dto.req.PassengerReq;
import com.wjy.usercenter.dto.resp.PassengerResp;
import com.wjy.usercenter.service.PassengerService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(tags = "乘车人接口")
public class PassengerController {

    @Autowired
    private PassengerService passengerService;

    /**
     * 新增乘车人
     */
    @PostMapping("/user/passenger/save")
    @ApiOperation("新增乘车人")
    public Result<Void> savePassenger(@RequestBody PassengerReq passengerReq) {
        passengerService.savePassenger(passengerReq);
        return Results.success();
    }

    /**
     * 根据用户名查询乘车人列表
     */
    @GetMapping("/user/passenger/query")
    @ApiOperation("根据用户名查询乘车人")
    public Result<List<PassengerResp>> listPassengerQueryByUsername() {
        return Results.success(passengerService.listPassengerQueryByUsername());
    }


    /**
     * 根据乘车人 ID 集合查询乘车人列表
     */
    @GetMapping("/user/inner/passenger/actual/query/ids")
    public Result<List<PassengerActualResp>> listPassengerQueryByIds(@RequestParam String username, @RequestParam List<Long> ids) {
        return Results.success(passengerService.listPassengerQueryByIds(username, ids));
    }

    /**
     * 修改乘车人
     */
    @PostMapping("/user/passenger/update")
    public Result<Void> updatePassenger(@RequestBody PassengerReq requestParam) {
        passengerService.updatePassenger(requestParam);
        return Results.success();
    }


    /**
     * 移除乘车人
     */
    @PostMapping("/user/passenger/remove")
    public Result<Void> removePassenger(@RequestBody PassengerRemoveReq requestParam) {
        passengerService.removePassenger(requestParam);
        return Results.success();
    }


}

