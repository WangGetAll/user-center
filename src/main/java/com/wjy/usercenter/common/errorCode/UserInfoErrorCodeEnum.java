package com.wjy.usercenter.common.errorCode;

public enum UserInfoErrorCodeEnum implements IErrorCode{
    USERNAME_NOT_EXIST("A006019", "用户名不存在");

    UserInfoErrorCodeEnum(String code, String message) {
        this.code = code;
        this.message = message;
    }

    /**
     * 错误码
     */
    private final String code;

    /**
     * 错误提示消息
     */
    private final String message;
    @Override
    public String code() {
        return this.code;
    }

    @Override
    public String message() {
        return this.message;
    }
}
