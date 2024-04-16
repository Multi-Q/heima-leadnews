package com.heima.schedule.service;

import com.heima.model.schedule.dtos.Task;

public interface TaskService {


    /**
     * 添加延迟任务
     * @param task
     * @return
     */
    public long addTask(Task task);

    /**
     * 取消任务
     * @param taskId 任务id
     * @return
     */
    public boolean cancelTask(long taskId);

    /**
     * 按照类型和优先级拉取任务
     * @param type 类型
     * @param priority 优先级
     * @return
     */
    public Task poll(int type,int priority);


}
