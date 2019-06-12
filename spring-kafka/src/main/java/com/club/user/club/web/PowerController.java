package com.club.user.club.web;

import com.club.user.club.domain.Power;
import com.club.user.club.service.PowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * (Power)表控制层
 *
 * @since 2019-06-09 23:30:57
 */
@RestController
@RequestMapping("/api/power")
public class PowerController {

    @Autowired
    private PowerService powerService;


}