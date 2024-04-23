package com.qrh.wemedia.service;

import com.qrh.model.common.dtos.PageResponseResult;
import com.qrh.model.common.dtos.ResponseResult;
import com.qrh.model.wemedia.dtos.StatisticsDto;

public interface WmStatisticsService {

    /**
     * 图文统计
     * @param beginDate
     * @param endDate
     * @return
     */
    public ResponseResult newsDimension(String beginDate, String endDate);

    /**
     * 分页查询图文统计
     * @param dto
     * @return
     */
    PageResponseResult newsPage(StatisticsDto dto);
}
