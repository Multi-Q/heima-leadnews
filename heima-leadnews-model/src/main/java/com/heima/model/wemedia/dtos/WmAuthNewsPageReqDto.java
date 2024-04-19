package com.heima.model.wemedia.dtos;

import com.heima.model.common.dtos.PageRequestDto;
import lombok.Data;

/**
 * @author QRH
 * @date 2024/4/19 20:16
 * @description 管理员审核文章dto
 */
@Data
public class WmAuthNewsPageReqDto extends PageRequestDto {
    //文章id
    private Integer id;
    //反驳后提出的消息
    private String msg;
    //文章状态
    private Integer status;
    //文章标题
    private String title;
}
