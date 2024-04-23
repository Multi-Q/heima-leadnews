package com.qrh.kafka.controller;

import com.alibaba.fastjson.JSON;
import com.qrh.kafka.pojos.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author QRH
 * @date 2024/4/14 22:29
 * @description TODO
 */
@RestController
public class HelloController {

    @Autowired
    private KafkaTemplate<String, String> kafkaTemplate;

    @GetMapping("/hello")
    public String hello() {
//        kafkaTemplate.send("itcast-hello", "阳光新闻头条");

        User user = new User();
        user.setUserName("大黄");
        user.setAge(6);

        kafkaTemplate.send("user-topic", JSON.toJSONString(user));

        return "ok";
    }

}
