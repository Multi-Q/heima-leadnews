package com.heima.model.wemedia.dtos;

import com.heima.model.common.dtos.PageRequestDto;
import lombok.Data;

/**
 * @author QRH
 * @date 2024/4/17 23:54
 * @description TODO
 */
@Data
public class WmChannelPageReqDto extends PageRequestDto {
    private String name;
    private Boolean status;
}
