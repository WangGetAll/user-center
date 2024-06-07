package com.wjy.usercenter.common.exception;

import com.wjy.usercenter.common.errorCode.IErrorCode;

public class ClientException extends AbstractException{

    public ClientException(IErrorCode errorCode) {
        this(null, null, errorCode);
    }
    public ClientException(String message, Throwable throwable, IErrorCode errorCode) {
        super(message, throwable, errorCode);
    }
}
