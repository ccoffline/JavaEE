package com.club.user.core.basereturn;

import lombok.Data;

@Data
public class BaseHead implements HeadInterface {
    private String token;
    private String roleCode;

    public BaseHead(String token,String roleCode) {
        this.token = token;
        this.roleCode=roleCode;
    }
}
