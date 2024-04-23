package com.qrh.schedule;

import com.qrh.common.redis.CacheService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Set;

/**
 * @author QRH
 * @date 2024/4/14 15:29
 * @description TODO
 */

@SpringBootTest(classes = ScheduleApplication.class)
@RunWith(SpringRunner.class)
public class RedisTest {

    @Autowired
    private CacheService cacheService;

    @Test
    public void testList(){
        cacheService.lLeftPush("list001","hello,redis");

        System.out.println(cacheService.lRange("list001",0,-1));;
    }

    @Test
    public void testZSet(){
        cacheService.zAdd("zsetkey","hello zset 001",1000);
        cacheService.zAdd("zsetkey","hello zset 002",888);
        cacheService.zAdd("zsetkey","hello zset 003",10);
        cacheService.zAdd("zsetkey","hello zset 004",9000);

        Set<ZSetOperations.TypedTuple<String>> zsetkey = cacheService.zRangeByScoreWithScores("zsetkey", 0, 10000);
        zsetkey.forEach(System.out::println);
    }
}
