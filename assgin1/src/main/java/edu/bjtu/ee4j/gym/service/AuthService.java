package edu.bjtu.ee4j.gym.service;

import edu.bjtu.ee4j.gym.model.UserAuth;
import edu.bjtu.ee4j.gym.repository.AuthRepository;
import edu.bjtu.ee4j.gym.util.StringUtil;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class AuthService {

    private final AuthRepository authRepository;
    private final PasswordEncoder passwordEncoder;

    public AuthService(AuthRepository authRepository, PasswordEncoder passwordEncoder) {
        this.authRepository = authRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public void createAuthentication(UserAuth user) {
        if (StringUtil.isEmpty(user.getUsername())) return;
        if (StringUtil.isEmpty(user.getPassword())) return;
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        authRepository.save(user);
    }

    public boolean authenticate(UserAuth user) {
        if (StringUtil.isEmpty(user.getUsername())) return false;
        if (StringUtil.isEmpty(user.getPassword())) return false;
        UserAuth stored = authRepository.findByUsername(user.getUsername());
        return stored != null && passwordEncoder.matches(user.getPassword(), stored.getPassword());
    }

    public UserAuth getByUsername(String username) {
        return authRepository.findByUsername(username);
    }
}
