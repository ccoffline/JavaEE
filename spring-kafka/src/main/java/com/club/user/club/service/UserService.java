package com.club.user.club.service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.club.user.club.domain.User;
import com.club.user.club.persistence.UserMapper;
import com.club.user.core.service.LxBaseService;
import org.springframework.stereotype.Service;

/**
 * (User)表服务接口
 *
 * @since 2019-06-09 23:23:31
 */
@Service
public class UserService extends LxBaseService<UserMapper, User> {
    public User login(User user){
        User user2 = this.selectOne(
                new EntityWrapper<User>()
                        .eq("user_name", user.getUserName())
        );
        if(user2.getUserPass().equals(user.getUserPass())){
            return user2;
        }
        return null;
    }
    public void createNewUser(User user){
        this.insert(user);
    }
}