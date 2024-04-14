package com.heima.schedule;

import com.heima.common.redis.CacheService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author QRH
 * @date 2024/4/14 15:29
 * @description TODO
 */

@SpringBootTest(classes = ScheduleApplication.class)
@RunWith(SpringRunner.class)
class RedisTest {

    @Autowired
    private CacheService cacheService;

    @Test
    public void testList(){
        cacheService.lLeftPush("list001","hello,redis");

        System.out.println(cacheService.lRange("list001",0,-1));;
    }
}
