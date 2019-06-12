package com.club.user.club.domain;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;


@TableName(value = "course")
@Data
public class Course {
    @TableId
    @TableField(value = "course_id")
    private Long courseId;

    @TableField(value = "course_name")
    private String courseName;

}