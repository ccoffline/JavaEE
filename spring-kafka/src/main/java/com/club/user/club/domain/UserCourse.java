package com.club.user.club.domain;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

@TableName(value = "user_course")
@Data
public class UserCourse {
    @TableId
    @TableField(value = "user_course_id")
    private Long userCourseId;

    @TableField(value = "user_course_id_str")
    private String userCourseIdStr;

    @TableField(value = "user_name")
    private String userName;

    @TableField(value = "course_name")
    private String courseName;

    @TableField(value = "telephone")
    private String telephone;

    @TableField(value = "state")
    private Integer state;

    @TableField(value = "content")
    private String content;

    @TableField(value = "number")
    private Integer number;
}