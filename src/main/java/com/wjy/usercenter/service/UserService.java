package com.wjy.usercenter.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.wjy.usercenter.entity.User;
import com.wjy.usercenter.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     *  用户名被用过返回true，否则返回false
     */
    public Boolean checkUsernameExist(String username) {
        LambdaQueryWrapper<User> queryWrapper = Wrappers.lambdaQuery(User.class).eq(User::getUsername, username);
        Long count = userMapper.selectCount(queryWrapper);
        return count > 0;
    }
}
