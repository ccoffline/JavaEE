package com.club.user.club.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.club.user.club.domain.UserPower;
import com.club.user.club.dto.UserPowerDTO;
import com.club.user.club.persistence.UserPowerMapper;
import com.club.user.core.service.LxBaseService;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * (UserPower)表服务接口
 *
 * @since 2019-06-09 23:30:57
 */
@Service
public class UserPowerService extends LxBaseService<UserPowerMapper, UserPower> {

    @Autowired
    private KafkaTemplate kafkaTemplate;

    public void passUserPower(UserPower userPower){
        System.err.println("发送资格申请通过id消息:"+userPower);
        kafkaTemplate.send("user-power-approval-pass", JSON.toJSONString(userPower));
    }

    public void rejectUserPower(UserPower userPower){
        System.err.println("发送资格申请驳回id消息:"+userPower);
        kafkaTemplate.send("user-power-approval-reject", JSON.toJSONString(userPower));
    }

    public UserPowerDTO selectUserPowerWail(){
        UserPowerDTO dto = new UserPowerDTO();
        List<UserPower> userPowerList = this.selectList(
                new EntityWrapper<UserPower>()
        );
        userPowerList.stream().forEach(line->{
            line.setUserPowerIdStr(line.getUserPowerId()+"");
        });
        dto.setUserPowerList(userPowerList);
        dto.setCount(userPowerList.size());
        return dto;
    }

    public void createUserPowerNews(UserPower userPower){
        System.err.println("发送资格申请消息:"+userPower);
        kafkaTemplate.send("user-power-apply", JSON.toJSONString(userPower));
    }


}