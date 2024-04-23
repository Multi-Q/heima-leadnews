package com.qrh.search.service;

import com.qrh.model.search.dtos.UserSearchDto;
import com.qrh.model.common.dtos.ResponseResult;

import java.io.IOException;

public interface ArticleSearchService {

    /**
     ES文章分页搜索
     @return
     */
    ResponseResult search(UserSearchDto userSearchDto) throws IOException;
}