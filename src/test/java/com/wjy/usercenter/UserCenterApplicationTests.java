package com.wjy.usercenter;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.wjy.usercenter.entity.User;
import com.wjy.usercenter.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class UserCenterApplicationTests {

    @Autowired
    private UserMapper userMapper;

    @Test
    void contextLoads() {
    }

    @Test
    public void testAddUser() {
        User user = new User();

        for (int i = 1; i <= 10; i++) {
            user.setUsername("wangjiayu" + i);
           userMapper.insert(user);

        }

    }

}
