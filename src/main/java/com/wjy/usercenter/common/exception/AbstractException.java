package com.wjy.usercenter.common.exception;


import com.wjy.usercenter.common.errorCode.IErrorCode;
import org.springframework.util.StringUtils;

import java.util.Optional;

public class AbstractException extends RuntimeException{
    public final String errorCode;

    public final String errorMessage;

    public AbstractException(String message, Throwable throwable, IErrorCode errorCode) {
        super(message, throwable);
        this.errorCode = errorCode.code();
        this.errorMessage = Optional.ofNullable(StringUtils.hasLength(message) ? message : null).orElse(errorCode.message());
    }

}
