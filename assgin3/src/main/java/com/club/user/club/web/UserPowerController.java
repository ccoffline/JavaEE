package com.club.user.club.web;

import com.club.user.club.domain.UserPower;
import com.club.user.club.dto.UserPowerDTO;
import com.club.user.club.service.UserPowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * (UserPower)表控制层
 *
 * @since 2019-06-09 23:30:57
 */
@RestController
@RequestMapping("/api/user/power")
public class UserPowerController {

    @Autowired
    private UserPowerService userPowerService;

    @PostMapping("/createNewUserPower")
    public void createNewUserPower(@RequestBody UserPower userPower){
        userPowerService.createUserPowerNews(userPower);
    }

    @GetMapping("/selectUserPowerWail")
    public UserPowerDTO selectUserPowerWail(){
        return userPowerService.selectUserPowerWail();
    }

    @PostMapping("/passUserPower")
    public void passUserPower(@RequestBody UserPower userPower){
        userPowerService.passUserPower(userPower);
    }

    @PostMapping("/rejectUserPower")
    public void rejectUserPower(@RequestBody UserPower userPower){
        userPowerService.rejectUserPower(userPower);
    }
}