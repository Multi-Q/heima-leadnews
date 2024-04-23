package com.qrh.article.service;

import com.qrh.model.article.dtos.CollectionBehaviorDto;
import com.qrh.model.common.dtos.ResponseResult;

public interface ApCollectionService {

    /**
     * 收藏
     * @param dto
     * @return
     */
    public ResponseResult collection(CollectionBehaviorDto dto);
}
