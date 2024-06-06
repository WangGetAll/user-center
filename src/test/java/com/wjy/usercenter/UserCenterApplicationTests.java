package com.wjy.usercenter;

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
        user.setUsername("wangjiayu");
        userMapper.insert(user);
    }

}