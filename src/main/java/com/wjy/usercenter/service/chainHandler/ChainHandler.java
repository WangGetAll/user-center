package com.wjy.usercenter.service.chainHandler;


public interface ChainHandler<T> {
    void handler(T req);
}
