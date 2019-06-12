package com.club.user.club.web;

import com.club.user.core.basereturn.ReturnHBE;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @description:
 * @version: 1.0
 * @date: 2019/6/9
 */
@Controller
public class MainWeb {

    @RequestMapping(value = "/index")
    public String index(){
        System.err.println("index!!!!");
        return "index_1";
    }


    @RequestMapping(value = "/home")
    public String home(){
        System.err.println("home!!!!");
        return "home";
    }

    @RequestMapping(value = "/powerapply")
    public String powerapply(){
        System.err.println("powerapply!!!!");
        return "powerapply";
    }

    @RequestMapping(value = "/courseapply")
    public String courseapply(){
        System.err.println("courseapply!!!!");
        return "courseapply";
    }

    @RequestMapping(value = "/powerapproval")
    public String powerapproval(){
        System.err.println("powerapproval!!!!");
        return "powerapproval";
    }

    @RequestMapping(value = "/courseapprpval")
    public String courseapprpval(){
        System.err.println("courseapprpval!!!!");
        return "courseapprpval";
    }
}
