package com.wjy.usercenter.service;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.IdcardUtil;
import cn.hutool.core.util.PhoneUtil;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson2.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.toolkit.SqlHelper;
import com.wjy.usercenter.common.enums.VerifyStatusEnum;
import com.wjy.usercenter.common.errorCode.PassengerErrorCodeEnum;
import com.wjy.usercenter.common.exception.ClientException;
import com.wjy.usercenter.common.exception.ServiceException;
import com.wjy.usercenter.dto.PassengerActualResp;
import com.wjy.usercenter.dto.UserContext;
import com.wjy.usercenter.dto.req.PassengerRemoveReq;
import com.wjy.usercenter.dto.req.PassengerReq;
import com.wjy.usercenter.dto.resp.PassengerResp;
import com.wjy.usercenter.entity.Passenger;
import com.wjy.usercenter.mapper.PassengerMapper;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

import static com.wjy.usercenter.common.constant.RedisKeyConstant.DISTRIBUTED_LOCK_KEY;
import static com.wjy.usercenter.common.constant.RedisKeyConstant.USER_PASSENGER_LIST;
import static com.wjy.usercenter.common.errorCode.PassengerErrorCodeEnum.PASSENGER_NOT_EXIST;


@Service
@Slf4j
public class PassengerService {
    @Autowired
    private PassengerMapper passengerMapper;

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private RedissonClient redissonClient;

    /**
     * 新增乘车人
     *
     * @param passengerReq 乘车人信息
     */
    public void savePassenger(PassengerReq passengerReq) {
        // 格式校验
        verifyPassenger(passengerReq);
        String username = UserContext.getUsername();
        // 落库
        try {
            Passenger passenger = BeanUtil.copyProperties(passengerReq, Passenger.class);
            // 因该调用接口去做校验，简化直接设置为已校验
            passenger.setUsername(username).setCreateDate(new Date()).setVerifyStatus(VerifyStatusEnum.REVIEWED.getCode());
            int insert = passengerMapper.insert(passenger);
            if (SqlHelper.retBool(insert)) {
                throw new ServiceException(PassengerErrorCodeEnum.SAVE_PASSENGER_DB_ERROR);
            }
        } catch (Exception e) {
            throw new ServiceException(PassengerErrorCodeEnum.SAVE_PASSENGER_ERROR);
        }
        // 删缓存
        redisTemplate.delete(USER_PASSENGER_LIST + username);
    }


    // 仅仅校验，格式是否正确
    private void verifyPassenger(PassengerReq requestParam) {
        int length = requestParam.getRealName().length();
        if (!(length >= 2 && length <= 16)) {
            throw new ClientException(PassengerErrorCodeEnum.REAL_NAME_LENGTH_ERROR);
        }
        if (!IdcardUtil.isValidCard(requestParam.getIdCard())) {
            throw new ClientException(PassengerErrorCodeEnum.ID_CARD_ERROR);
        }
        if (!PhoneUtil.isMobile(requestParam.getPhone())) {
            throw new ClientException(PassengerErrorCodeEnum.PHONE_ERROR);
        }
    }


    /**
     * 根据用户名查询乘车人列表
     */
    public List<PassengerResp> listPassengerQueryByUsername() {
        String username = UserContext.getUsername();
        // 从redis中查询，如果redis中不存在，加分布式锁，在查询数据库加载。
        String actualUserPassengerListStr = getActualUserPassengerListStr(username);
        return Optional.ofNullable(actualUserPassengerListStr)
                .map(str -> JSON.parseArray(str, Passenger.class))
                .map(list -> BeanUtil.copyToList(list, PassengerResp.class))
                .orElse(null);
    }

    private String getActualUserPassengerListStr(String username) {
        String key = USER_PASSENGER_LIST + username;
        // 获取到缓存直接返回
        String res = redisTemplate.opsForValue().get(key);
        if (StrUtil.isNotBlank(res)) return res;
        // 获取不到，拿到分布式锁后，访问数据库，加载到缓存
        RLock lock = redissonClient.getLock(DISTRIBUTED_LOCK_KEY + key);
        lock.lock();
        // 拿到锁之后，再判断一次
        try {
            if (!StrUtil.isNotBlank(res = redisTemplate.opsForValue().get(key))) {
                LambdaQueryWrapper<Passenger> queryWrapper = Wrappers.lambdaQuery(Passenger.class).eq(Passenger::getUsername, username);
                List<Passenger> passengerList = passengerMapper.selectList(queryWrapper);
                if (CollUtil.isNotEmpty(passengerList)) {
                    res = JSON.toJSONString(passengerList);
                    redisTemplate.opsForValue().set(key, res);
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            lock.unlock();
        }
        return res;
    }

    /**
     * 根据乘车人 ID 集合查询乘车人列表
     *
     * @param username 用户名
     * @param ids      乘车人 ID 集合
     * @return 乘车人返回列表
     */
    public List<PassengerActualResp> listPassengerQueryByIds(String username, List<Long> ids) {
        String actualUserPassengerListStr = getActualUserPassengerListStr(username);
        if (StrUtil.isEmpty(actualUserPassengerListStr)) {
            return null;
        }
        return JSON.parseArray(actualUserPassengerListStr, Passenger.class)
                .stream().filter(passenger -> ids.contains(passenger.getId()))
                .map(passenger -> BeanUtil.copyProperties(passenger, PassengerActualResp.class))
                .collect(Collectors.toList());
    }

    /**
     * 修改乘车人
     *
     * @param passengerReq 乘车人信息
     */
    public void updatePassenger(PassengerReq passengerReq) {
        verifyPassenger(passengerReq);
        String username = UserContext.getUsername();
        //落库
        try {
            Passenger passenger = BeanUtil.copyProperties(passengerReq, Passenger.class);
            passenger.setUsername(username);
            LambdaUpdateWrapper<Passenger> updateWrapper = Wrappers.lambdaUpdate(Passenger.class)
                    .eq(Passenger::getId, passenger.getId())
                    .eq(Passenger::getUsername, passenger.getUsername());
            int update = passengerMapper.update(passenger, updateWrapper);
            if (!SqlHelper.retBool(update)) {
                throw new ServiceException(PassengerErrorCodeEnum.UPDATE_PASSENGER_DB_ERROR);
            }
        } catch (Exception e) {
            throw new ServiceException(PassengerErrorCodeEnum.UPDATE_PASSENGER_ERROR);
        }
        // 删缓存
        redisTemplate.delete(USER_PASSENGER_LIST + username);
    }


    /**
     * 移除乘车人
     *
     * @param passengerRemoveReq 移除乘车人信息
     */
    public void removePassenger(PassengerRemoveReq passengerRemoveReq) {
        String username = UserContext.getUsername();
        LambdaQueryWrapper<Passenger> queryWrapper = Wrappers.lambdaQuery(Passenger.class)
                .eq(Passenger::getUsername, username)
                .eq(Passenger::getId, passengerRemoveReq.getId());
        Passenger passenger = passengerMapper.selectOne(queryWrapper);
        if (Objects.isNull(passenger)) {
            throw new ClientException(PASSENGER_NOT_EXIST);
        }
        try {
            LambdaUpdateWrapper<Passenger> deleteWrapper = Wrappers.lambdaUpdate(Passenger.class)
                    .eq(Passenger::getUsername, username)
                    .eq(Passenger::getId, passengerRemoveReq.getId());
            int deleted = passengerMapper.delete(deleteWrapper);
            if (!SqlHelper.retBool(deleted)) {
                throw new ServiceException(PassengerErrorCodeEnum.DELETE_PASSENGER_DB_ERROR);
            }
        } catch (Exception e) {
            throw new ServiceException(PassengerErrorCodeEnum.DELETE_PASSENGER_ERROR);
        }
        // 删缓存
        redisTemplate.delete(USER_PASSENGER_LIST + username);
    }
}
