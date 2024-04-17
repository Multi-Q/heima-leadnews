package com.heima.search.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.search.dtos.UserSearchDto;
import com.heima.search.pojos.ApAssociateWords;

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