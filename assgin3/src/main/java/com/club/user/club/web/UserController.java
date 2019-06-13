package com.club.user.club.web;

import com.club.user.club.domain.User;
import com.club.user.club.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * (User)表控制层
 *
 * @since 2019-06-09 23:23:31
 */
@RestController
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/createNewUser")
    public void createNewUser(@RequestBody User user){
        userService.createNewUser(user);
    }


    @PostMapping("/login")
    public User login(@RequestBody User user){
        return userService.login(user);
    }
}