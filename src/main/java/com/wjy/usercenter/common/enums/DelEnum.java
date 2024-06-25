package com.wjy.usercenter.common.enums;

public enum DelEnum {

    /**
     * 正常状态
     */
    NORMAL(0, "正常状态"),

    /**
     * 删除状态
     */
    DELETE(1, "删除状态");

    private final Integer statusCode;
    private final String desc;

    DelEnum(Integer statusCode, String desc) {
        this.statusCode = statusCode;
        this.desc = desc;
    }

    public Integer code() {
        return this.statusCode;
    }

    public String strCode() {
        return String.valueOf(this.statusCode);
    }

    @Override
    public String toString() {
        return strCode();
    }
}
