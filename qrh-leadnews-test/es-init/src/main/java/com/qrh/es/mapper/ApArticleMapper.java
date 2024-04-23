package com.qrh.es.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qrh.es.pojo.SearchArticleVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ApArticleMapper extends BaseMapper<ApArticle> {

    public List<SearchArticleVo> loadArticleList();

}
