package com.heima.admin.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @author QRH
 * @date 2024/4/17 18:09
 * @description TODO
 */
@SpringBootApplication
@EnableDiscoveryClient
public class AdminGatewayMain {

    public static void main(String[] args) {
        SpringApplication.run(AdminGatewayMain.class,args);
    }
}

