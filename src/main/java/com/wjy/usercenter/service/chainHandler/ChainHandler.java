package com.wjy.usercenter.service.chainHandler;

import org.springframework.core.Ordered;

public interface ChainHandler<T> {
    void handler(T req);
}
