package com.qrh.wemedia.controller.v1;

import com.qrh.model.common.dtos.PageResponseResult;
import com.qrh.model.common.dtos.ResponseResult;
import com.qrh.model.wemedia.dtos.StatisticsDto;
import com.qrh.wemedia.service.WmStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/statistics")
public class WmStatisticsController {

    @Autowired
    private WmStatisticsService wmStatisticsService;

    @GetMapping("/newsDimension")
    public ResponseResult newsDimension(String beginDate,String endDate){
        return wmStatisticsService.newsDimension(beginDate,endDate);
    }

    @GetMapping("/newsPage")
    public PageResponseResult newsPage(StatisticsDto dto){
        return wmStatisticsService.newsPage(dto);
    }
}
