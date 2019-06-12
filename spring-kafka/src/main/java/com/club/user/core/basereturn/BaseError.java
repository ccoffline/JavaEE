package com.club.user.core.basereturn;

import lombok.Data;

@Data
public class BaseError implements ErrorInterface {

    private Boolean flag;

    private String errorCode;

    private String errorDesc;

    private Integer errorLevel;

    public BaseError(String errorCode, String errorDesc, Integer errorLevel) {
        this.flag = false;
        this.errorCode = errorCode;
        this.errorDesc = errorDesc;
        this.errorLevel = errorLevel;
    }

    public BaseError(Boolean flag) {
        this.flag = flag;
    }
}
