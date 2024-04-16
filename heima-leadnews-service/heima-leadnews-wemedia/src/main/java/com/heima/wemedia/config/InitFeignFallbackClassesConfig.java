package com.heima.wemedia.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * 远程调用，扫描远程调用接口的fallback类并初始化
 */
@Configuration
@ComponentScan("com.heima.apis") //扫描远程调用接口，服务降级fallback类所在的包路径
public class InitFeignFallbackClassesConfig {
}
