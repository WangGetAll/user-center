package com.wjy.usercenter.common.errorCode;

public enum UserRegisterErrorCodeEnum implements IErrorCode {

    USER_REGISTER_FAIL("A006000", "用户注册失败"),

    USER_NAME_NULL("A006001", "用户名不能为空"),

    PASSWORD_NULL("A006002", "密码不能为空"),

    PHONE_NULL("A006003", "手机号不能为空"),

    ID_TYPE_NULL("A006004", "证件类型不能为空"),

    ID_CARD_NULL("A006005", "证件号不能为空"),

    USERNAME_REGISTERED("A006006", "用户名已存在"),

    PHONE_REGISTERED("A006007", "手机号已被占用"),

    MAIL_REGISTERED("A006008", "邮箱已被占用"),

    MAIL_NULL("A006009", "邮箱不能为空"),

    USER_TYPE_NULL("A006010", "旅客类型不能为空"),

    POST_CODE_NULL("A006011", "邮编不能为空"),

    ADDRESS_NULL("A006012", "地址不能为空"),

    REGION_NULL("A006012", "国家/地区不能为空"),

    TELEPHONE_NULL("A006013", "固定电话不能为空"),

    VERIFY_STATE_NULL("A006014", "审核状态不能为空"),

    REAL_NAME_NULL("A006015", "真实姓名不能为空"),

    MAX_DELETION("A006016", "用户多次注销"),

    COUNT_PASSWORD_WRONG("A006017","账户名或者密码错误"),
    JWT_PARSER_ERROR("A006018", "JWT解析错误");

    /**
     * 错误码
     */
    private final String code;

    /**
     * 错误提示消息
     */
    private final String message;

    private UserRegisterErrorCodeEnum(String code, String message) {
        this.code = code;
        this.message = message;
    }

    @Override
    public String code() {
        return code;
    }

    @Override
    public String message() {
        return message;
    }

}
