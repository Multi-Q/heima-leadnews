package com.heima.model.user.dtos;

import com.heima.model.common.dtos.PageRequestDto;
import lombok.Data;

/**
 * @author QRH
 * @date 2024/4/18 22:04
 * @description TODO
 */
@Data
public class ApAuthPageRequestDto extends PageRequestDto {
    private Integer id;
    private String msg;
    private Short status;

}
