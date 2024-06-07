package com.wjy.usercenter.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.wjy.usercenter.entity.UserDeletion;
import com.wjy.usercenter.mapper.UserDeletionMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserDeletionService {
    @Autowired
    private UserDeletionMapper userDeletionMapper;

    public Long getUserDeletionCount(Integer idType, String idCard) {
        LambdaQueryWrapper<UserDeletion> queryWrapper = Wrappers.lambdaQuery(UserDeletion.class)
                .eq(UserDeletion::getIdType, idType)
                .eq(UserDeletion::getIdCard, idCard);
        return userDeletionMapper.selectCount(queryWrapper);
    }
}
