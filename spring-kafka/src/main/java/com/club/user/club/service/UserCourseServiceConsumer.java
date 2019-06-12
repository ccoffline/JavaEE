package com.club.user.club.service;

import com.alibaba.fastjson.JSONObject;
import com.club.user.club.domain.UserCourse;
import com.club.user.club.persistence.UserCourseMapper;
import com.club.user.core.service.LxBaseService;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * (UserCourse)表服务接口
 *
 * @since 2019-06-09 23:30:57
 */
@Service
public class UserCourseServiceConsumer extends LxBaseService<UserCourseMapper, UserCourse> {
    @KafkaListener(topics = {"user-course-apply"})
    public void createNewUserPower(ConsumerRecord<?,?> consumerRecord){
        Optional<?> kafkaMessage = Optional.ofNullable(consumerRecord.value());
        if(kafkaMessage.isPresent()){
            //得到Optional实例中的值
            Object message = kafkaMessage.get();
            System.err.println("消费私人培训班申请创建消息:"+message);
            JSONObject jsonobject = JSONObject.parseObject(message.toString());
            UserCourse userCourse=jsonobject.toJavaObject(UserCourse.class);
            userCourse.setState(0);
            this.insert(userCourse);
        }
    }

    @KafkaListener(topics = {"user-course-approval-pass"})
    public void passUserPower(ConsumerRecord<?,?> consumerRecord){
        Optional<?> kafkaMessage = Optional.ofNullable(consumerRecord.value());
        if(kafkaMessage.isPresent()){
            Object message = kafkaMessage.get();
            System.err.println("消费私人培训班申请通过id消息:"+message);
            JSONObject jsonobject = JSONObject.parseObject(message.toString());
            UserCourse userCourse=jsonobject.toJavaObject(UserCourse.class);
            UserCourse userCourse2 = this.selectById(Long.parseLong(userCourse.getUserCourseIdStr()));
            userCourse2.setState(1);
            this.updateById(userCourse2);
        }

    }

    @KafkaListener(topics = {"user-course-approval-reject"})
    public void rejectUserPower(ConsumerRecord<?,?> consumerRecord){
        Optional<?> kafkaMessage = Optional.ofNullable(consumerRecord.value());
        if(kafkaMessage.isPresent()){
            Object message = kafkaMessage.get();
            System.err.println("消费私人培训班申请驳回id消息:"+message);
            JSONObject jsonobject = JSONObject.parseObject(message.toString());
            UserCourse userCourse=jsonobject.toJavaObject(UserCourse.class);
            UserCourse userCourse2 = this.selectById(Long.parseLong(userCourse.getUserCourseIdStr()));
            userCourse2.setState(-1);
            this.updateById(userCourse2);
        }
    }
}