package com.club.user.club.dto;

import com.club.user.club.domain.UserCourse;
import lombok.Data;

import java.util.List;

/**
 * @description:
 * @version: 1.0
 * @date: 2019/6/10
 */
@Data
public class UserCourseDTO {
    private Integer count;
    private List<UserCourse> userCourseList;
}
