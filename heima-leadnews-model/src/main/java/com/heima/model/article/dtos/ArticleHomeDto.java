package com.heima.model.article.dtos;

import lombok.Data;

import java.util.Date;

/**
 * @author QRH
 * @date 2024/4/8 21:55
 * @description TODO
 */
@Data
public class ArticleHomeDto {

    //最大时间
    private Date maxBehotTime;
    //    最小时间
    private Date minBehotTime;
    //    频道id
    private String tag;
    //    分页大小
    private Integer size;
}
