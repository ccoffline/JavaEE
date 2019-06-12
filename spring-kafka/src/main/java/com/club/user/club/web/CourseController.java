package com.club.user.club.web;

import com.club.user.club.domain.Course;
import com.club.user.club.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * (Course)表控制层
 *
 * @since 2019-06-09 23:30:57
 */
@RestController
@RequestMapping("/api/course")
public class CourseController {

    @Autowired
    private CourseService courseService;


}