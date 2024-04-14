package com.heima.article.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.heima.model.article.dtos.ArticleDto;
import com.heima.model.article.pojos.ApArticleConfig;
import com.heima.model.common.dtos.ResponseResult;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ApArticleConfigMapper extends BaseMapper<ApArticleConfig> {


}
