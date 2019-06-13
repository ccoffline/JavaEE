package com.club.user.club.domain;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;


@TableName(value = "user")
@Data
public class User {
    @TableId
    @TableField(value = "user_id")
    private Long userId;

    @TableField(value = "user_name")
    private String userName;

    @TableField(value = "user_pass")
    private String userPass;

    @TableField(value = "name")
    private String name;

    @TableField(value = "user_level")
    private Integer userLevel;

}