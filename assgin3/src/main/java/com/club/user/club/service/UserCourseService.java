package com.club.user.club.service;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.club.user.club.domain.UserCourse;
import com.club.user.club.dto.UserCourseDTO;
import com.club.user.club.persistence.UserCourseMapper;
import com.club.user.core.service.LxBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (UserCourse)表服务接口
 *
 * @since 2019-06-09 23:30:57
 */
@Service
public class UserCourseService extends LxBaseService<UserCourseMapper, UserCourse> {

    @Autowired
    private KafkaTemplate kafkaTemplate;

    public void passUserCourse(UserCourse userCourse){
        System.err.println("发送私人培训班申请通过id消息:"+userCourse);
        kafkaTemplate.send("user-course-approval-pass", JSON.toJSONString(userCourse));
    }

    public void rejectUserCourse(UserCourse userCourse){
        System.err.println("发送私人培训班申请驳回id消息:"+userCourse);
        kafkaTemplate.send("user-course-approval-reject", JSON.toJSONString(userCourse));
    }

    public UserCourseDTO selectUserCourseWail(){
        UserCourseDTO dto = new UserCourseDTO();
        List<UserCourse> userCourseList = this.selectList(
                new EntityWrapper<UserCourse>()
        );
        userCourseList.stream().forEach(line->{
            line.setUserCourseIdStr(line.getUserCourseId()+"");
        });
        dto.setUserCourseList(userCourseList);
        dto.setCount(userCourseList.size());
        return dto;
    }
    public void createNewUserCourse(UserCourse userCourse){
        System.err.println("发送私人培训班申请消息:"+userCourse);
        kafkaTemplate.send("user-course-apply", JSON.toJSONString(userCourse));
    }
}