package com.club.user.club.domain;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

@TableName(value = "user_power")
@Data
public class UserPower {
    @TableId
    @TableField(value = "user_power_id")
    private Long userPowerId;

    @TableField(value = "user_power_id_str")
    private String userPowerIdStr;

    @TableField(value = "user_name")
    private String userName;

    @TableField(value = "power_name")
    private String powerName;

    @TableField(value = "telephone")
    private String telephone;

    @TableField(value = "reason")
    private String reason;

    @TableField(value = "state")
    private Integer state;
}