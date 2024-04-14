package com.heima.article.service;

import com.heima.model.article.pojos.ApArticle;

/**
 * @author QRH
 * @date 2024/4/13 20:48
 * @description TODO
 */
public interface ArticleFreemarkerService {
    public void buildArticleToMinio(ApArticle apArticle, String content);
}
