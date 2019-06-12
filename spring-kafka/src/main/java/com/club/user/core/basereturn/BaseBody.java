package com.club.user.core.basereturn;

import lombok.Data;

import java.util.List;

@Data
public class BaseBody<T> implements BodyInterface {
    private Integer selectCount;
    private List<T> select;

    public BaseBody(List<T> select) {
        this.select = select;
        this.selectCount = select.size();
    }
}
