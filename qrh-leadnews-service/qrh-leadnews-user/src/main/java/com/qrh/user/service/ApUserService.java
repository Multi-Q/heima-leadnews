package com.qrh.user.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qrh.model.common.dtos.ResponseResult;
import com.qrh.model.user.dtos.LoginDto;
import com.qrh.model.user.pojos.ApUser;

public interface ApUserService extends IService<ApUser> {
    /**
     * app端登录功能
     * @param dto
     * @return
     */
    public ResponseResult login(LoginDto dto);
}
