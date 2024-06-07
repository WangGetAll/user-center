package com.wjy.usercenter.common.exception;

import com.wjy.usercenter.common.errorCode.IErrorCode;

public class ServiceException extends AbstractException{
    public ServiceException(IErrorCode errorCode) {
        this(null, null, errorCode);
    }
    public ServiceException(String message, Throwable throwable, IErrorCode errorCode) {
        super(message, throwable, errorCode);
    }
}
