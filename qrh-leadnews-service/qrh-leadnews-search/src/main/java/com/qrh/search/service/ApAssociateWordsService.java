package com.qrh.search.service;

import com.qrh.model.common.dtos.ResponseResult;
import com.qrh.model.search.dtos.UserSearchDto;

/**
 * <p>
 * 联想词表 服务类
 * </p>
 *
 */
public interface ApAssociateWordsService  {

    /**
     联想词
     @param userSearchDto
     @return
     */
    public ResponseResult findAssociate(UserSearchDto userSearchDto);

}