package com.heima.user.service;

import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.user.dtos.ApAuthPageRequestDto;
import com.heima.model.user.pojos.ApUserRealname;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * APP实名认证信息表 服务类
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
public interface IApUserRealnameService extends IService<ApUserRealname> {

    /**
     * 查询所有
     * @param dto
     * @return
     */
    ResponseResult findAll(ApAuthPageRequestDto dto);

    /**
     * 审核
     * @param dto
     * @return
     */
    ResponseResult auth(ApAuthPageRequestDto dto);
}
