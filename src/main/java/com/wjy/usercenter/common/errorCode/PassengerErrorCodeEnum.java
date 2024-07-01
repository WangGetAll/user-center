package com.wjy.usercenter.common.errorCode;

public enum PassengerErrorCodeEnum implements IErrorCode{
    REAL_NAME_LENGTH_ERROR("A006020", "姓名长度错误"),
    ID_CARD_ERROR("A006021","证件号错误"),
    PHONE_ERROR("A006022","手机号错误"),
    SAVE_PASSENGER_DB_ERROR("A006023","新增乘客数据库错误"),
    SAVE_PASSENGER_ERROR("A006024","新增乘客错误"),
    UPDATE_PASSENGER_DB_ERROR("A006025", "修改乘客数据库错误"),
    UPDATE_PASSENGER_ERROR("A006026", "修改乘客错误"),
    PASSENGER_NOT_EXIST("A006027", "乘客不存在"),
    DELETE_PASSENGER_DB_ERROR("A006028", "删除乘客数据库错误"),
    DELETE_PASSENGER_ERROR("A006029", "删除乘客错误");

    PassengerErrorCodeEnum(String code, String message) {
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
