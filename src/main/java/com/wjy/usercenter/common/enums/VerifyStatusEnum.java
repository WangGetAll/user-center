package com.wjy.usercenter.common.enums;

import lombok.Getter;

public enum VerifyStatusEnum {

    /**
     * 未审核
     */
    UNREVIEWED(0),

    /**
     * 已审核
     */
    REVIEWED(1);

    @Getter
    private final int code;

    VerifyStatusEnum(int code) {
        this.code = code;
    }



}
