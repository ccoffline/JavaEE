package com.club.user.club.domain;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;


@TableName(value = "power")
@Data
public class Power {
    @TableId
    @TableField(value = "power_id")
    private Long powerId;

    @TableField(value = "power_name")
    private String powerName;

}