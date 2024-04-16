package com.heima.apis.schedule.fallback;

import com.heima.apis.schedule.IScheduleClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.schedule.dtos.Task;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * @author QRH
 * @date 2024/4/16 16:53
 * @description TODO
 */
@Component
public class IScheduleClientFallback implements IScheduleClient {
    /**
     * 添加延迟任务
     *
     * @param task
     * @return
     */
    @Override
    public ResponseResult addTask(@RequestBody Task task) {
        return ResponseResult.errorResult(500,"IScheduleClientFallback.java--addTask:调用失败");
    }

    /**
     * 取消任务
     *
     * @param taskId
     * @return
     */
    @Override
    public ResponseResult cancelTask(@PathVariable("taskId") long taskId){
        return ResponseResult.errorResult(500,"IScheduleClientFallback.java--cancelTask:调用失败");
    }

    /**
     * 按照类型和优先级拉取任务
     *
     * @param type
     * @param priority
     * @return
     */
    @Override
    public ResponseResult poll(@PathVariable("type") int type,@PathVariable("priority") int priority) {
        return ResponseResult.errorResult(500,"IScheduleClientFallback.java--poll:调用失败");
    }
}
