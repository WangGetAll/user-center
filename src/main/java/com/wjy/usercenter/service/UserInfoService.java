package com.wjy.usercenter.service;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.wjy.usercenter.common.errorCode.UserInfoErrorCodeEnum;
import com.wjy.usercenter.common.exception.ClientException;
import com.wjy.usercenter.dto.req.UserDeletionReq;
import com.wjy.usercenter.dto.req.UserUpdateReq;
import com.wjy.usercenter.dto.resp.UserQueryActualResp;
import com.wjy.usercenter.dto.resp.UserQueryResp;
import com.wjy.usercenter.entity.User;
import com.wjy.usercenter.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserInfoService {
    @Autowired
    private UserMapper userMapper;

    public UserQueryResp getUserByUsername(String username) {
        LambdaQueryWrapper<User> queryWrapper = Wrappers.lambdaQuery(User.class)
                .eq(User::getUsername, username);
        User user = userMapper.selectOne(queryWrapper);
        if (user == null) {
            throw new ClientException(UserInfoErrorCodeEnum.USERNAME_NOT_EXIST);
        }
        return BeanUtil.copyProperties(user, UserQueryResp.class);
    }

    public UserQueryActualResp queryActualUserByUsername(String username) {
        return  BeanUtil.copyProperties(getUserByUsername(username),UserQueryActualResp.class);
    }

    public void update(UserUpdateReq userUpdateReq) {
        // todo
    }

    public void deletion(UserDeletionReq requestParam) {

    }
}
