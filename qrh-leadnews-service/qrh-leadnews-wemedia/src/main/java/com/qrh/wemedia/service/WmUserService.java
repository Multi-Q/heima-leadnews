package com.qrh.wemedia.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qrh.model.common.dtos.ResponseResult;
import com.qrh.model.wemedia.dtos.WmLoginDto;
import com.qrh.model.wemedia.pojos.WmUser;

public interface WmUserService extends IService<WmUser> {

    /**
     * 自媒体端登录
     * @param dto
     * @return
     */
    public ResponseResult login(WmLoginDto dto);

}