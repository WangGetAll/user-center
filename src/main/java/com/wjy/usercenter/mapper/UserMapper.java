package com.wjy.usercenter.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wjy.usercenter.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
