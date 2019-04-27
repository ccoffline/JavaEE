package edu.bjtu.ee4j.gym.controller;

import edu.bjtu.ee4j.gym.model.UserAuth;
import edu.bjtu.ee4j.gym.service.AuthService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class AuthController {

    private static final Logger log = LoggerFactory.getLogger(AuthController.class);

    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/register")
    public String register(@RequestBody UserAuth user) {
        log.info("register new user {}", user);
        authService.createAuthentication(user);
        return "success";
    }

    @PostMapping("/login")
    public String login(@RequestBody UserAuth user) {
        log.info("login user {}", user);
        return authService.authenticate(user) ? "success" : "fail";
    }
}
