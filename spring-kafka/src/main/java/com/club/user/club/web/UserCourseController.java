package com.club.user.club.web;

import com.club.user.club.domain.UserCourse;
import com.club.user.club.dto.UserCourseDTO;
import com.club.user.club.service.CourseService;
import com.club.user.club.service.UserCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * (UserCourse)表控制层
 *
 * @since 2019-06-09 23:30:57
 */
@RestController
@RequestMapping("/api/user/course")
public class UserCourseController {

    @Autowired
    private UserCourseService userCourseService;

    @PostMapping("/createNewUserCourse")
    public void createNewUserCourse(@RequestBody UserCourse userCourse){
        userCourseService.createNewUserCourse(userCourse);
    }

    @GetMapping("/selectUserCourseWail")
    public UserCourseDTO selectUserCourseWail(){

        return userCourseService.selectUserCourseWail();
    }

    @PostMapping("/passUserCourse")
    public void passUserCourse(@RequestBody UserCourse userCourse){
        userCourseService.passUserCourse(userCourse);
    }

    @PostMapping("/rejectUserCourse")
    public void rejectUserCourse(@RequestBody UserCourse userCourse){
        userCourseService.rejectUserCourse(userCourse);
    }
}