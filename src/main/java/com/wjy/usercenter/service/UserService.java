package com.wjy.usercenter.service;


import com.wjy.usercenter.mapper.UserMapper;
import org.redisson.api.RBloomFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import static com.wjy.usercenter.common.constant.RedisKeyConstant.USER_REGISTER_USERNAME_REUSE;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RBloomFilter<String> userRegisterCachePenetrationBloomFilter;

    @Autowired
    private RedisTemplate redisTemplate;


    /**
     *  用户名被用过返回true，否则返回false
     *  布隆过滤器判断不存在一定不存在，直接返回false （不存在从布隆过滤器中删除元素的情况下）
     *  布隆过滤器判断判断存在三种可能：
     *      1. 布隆过滤器中真的存在，用户名被用了。
     *      2. 布隆过滤器中真的存在，但是用户注销了，用户名可以复用了。
     *      3. 布隆过滤器中不存在，由于hash冲突，误判。可以接受。
     *  因为，想让注销后的用户名可以复用，所以，布隆过滤器判断存在后，查看一下是否，用户名是否在可复用名字集合中
     */
    public Boolean checkUsernameExist(String username) {
        boolean contains = userRegisterCachePenetrationBloomFilter.contains(username);
        if (!contains) return false;
        return redisTemplate.opsForSet().isMember(USER_REGISTER_USERNAME_REUSE, username);
    }

}
