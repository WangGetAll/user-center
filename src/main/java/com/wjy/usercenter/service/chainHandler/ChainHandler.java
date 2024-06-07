package com.wjy.usercenter.service.chainHandler;

import org.springframework.core.Ordered;

public interface ChainHandler<T>  extends Ordered {
    void handler(T req);
}
