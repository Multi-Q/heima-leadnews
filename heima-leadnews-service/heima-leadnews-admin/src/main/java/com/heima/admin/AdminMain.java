package com.heima.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * @author QRH
 * @date 2024/4/17 17:21
 * @description TODO
 */
@SpringBootApplication
@EnableDiscoveryClient
@MapperScan(basePackages = {"com.heima.admin.mapper"})
@EnableFeignClients(basePackages = {"com.heima.apis"})
public class AdminMain {


    public static void main(String[] args) {
        SpringApplication.run(AdminMain.class,args);
    }
}
