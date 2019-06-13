package com.club.user.club.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.club.user.club.domain.UserPower;
import com.club.user.club.persistence.UserPowerMapper;
import com.club.user.core.service.LxBaseService;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @description:
 * @version: 1.0
 * @date: 2019/6/10
 */
@Service
public class UserPowerServiceConsumer extends LxBaseService<UserPowerMapper, UserPower> {

    @KafkaListener(topics = {"user-power-apply"})
    public void createNewUserPower(ConsumerRecord<?,?> consumerRecord){
        Optional<?> kafkaMessage = Optional.ofNullable(consumerRecord.value());
        if(kafkaMessage.isPresent()){
            //得到Optional实例中的值
            Object message = kafkaMessage.get();
            System.err.println("消费资格申请创建消息:"+message);
            JSONObject jsonobject = JSONObject.parseObject(message.toString());
            UserPower userPower=jsonobject.toJavaObject(UserPower.class);
            userPower.setState(0);
            this.insert(userPower);
        }
    }

    @KafkaListener(topics = {"user-power-approval-pass"})
    public void passUserPower(ConsumerRecord<?,?> consumerRecord){
        Optional<?> kafkaMessage = Optional.ofNullable(consumerRecord.value());
        if(kafkaMessage.isPresent()){
            Object message = kafkaMessage.get();
            System.err.println("消费资格申请通过id消息:"+message);
            JSONObject jsonobject = JSONObject.parseObject(message.toString());
            UserPower userPower=jsonobject.toJavaObject(UserPower.class);
            UserPower userPower2 = this.selectById(Long.parseLong(userPower.getUserPowerIdStr()));
            userPower2.setState(1);
            this.updateById(userPower2);
        }

    }

    @KafkaListener(topics = {"user-power-approval-reject"})
    public void rejectUserPower(ConsumerRecord<?,?> consumerRecord){
        Optional<?> kafkaMessage = Optional.ofNullable(consumerRecord.value());
        if(kafkaMessage.isPresent()){
            Object message = kafkaMessage.get();
            System.err.println("消费资格申请驳回id消息:"+message);
            JSONObject jsonobject = JSONObject.parseObject(message.toString());
            UserPower userPower=jsonobject.toJavaObject(UserPower.class);
            UserPower userPower2 = this.selectById(Long.parseLong(userPower.getUserPowerIdStr()));
            userPower2.setState(-1);
            this.updateById(userPower2);
        }
    }
}
