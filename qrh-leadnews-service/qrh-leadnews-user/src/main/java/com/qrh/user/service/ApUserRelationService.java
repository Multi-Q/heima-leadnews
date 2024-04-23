package com.qrh.user.service;


import com.qrh.model.common.dtos.ResponseResult;
import com.qrh.model.user.dtos.UserRelationDto;


public interface ApUserRelationService {
    /**
     * 用户关注/取消关注
     * @param dto
     * @return
     */
    public ResponseResult follow(UserRelationDto dto);
}