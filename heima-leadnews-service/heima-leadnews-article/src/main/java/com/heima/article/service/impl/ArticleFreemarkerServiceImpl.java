package com.heima.article.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.heima.article.service.ApArticleService;
import com.heima.article.service.ArticleFreemarkerService;
import com.heima.file.service.FileStorageService;
import com.heima.model.article.pojos.ApArticle;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;

/**
 * @author QRH
 * @date 2024/4/13 20:49
 * @description TODO
 */
@Service
@Slf4j
@Transactional
public class ArticleFreemarkerServiceImpl implements ArticleFreemarkerService {
    @Autowired
    private Configuration configuration;
    @Autowired
    private FileStorageService fileStorageService;
    @Autowired
    private ApArticleService apArticleService;

    @Override
    @Async
    public void buildArticleToMinio(ApArticle apArticle, String content) {
        if (StringUtils.isNotBlank(content)) {
            Template template = null;
            StringWriter out = null;
            try {
                template = configuration.getTemplate("article.ftl");
                HashMap<String, Object> contentDataModel = new HashMap<>();
                contentDataModel.put("content", JSONArray.parseArray(content));
                out = new StringWriter();
                template.process(contentDataModel, out);
            } catch (IOException | TemplateException e) {
                e.printStackTrace();
            }

            //把html文件上传到minio中
            InputStream in = new ByteArrayInputStream(out.toString().getBytes(StandardCharsets.UTF_8));
            String path = fileStorageService.uploadHtmlFile("", apArticle.getId() + ".html", in);
            //修改article表，保存static_url字段
            apArticleService.update(Wrappers.<ApArticle>lambdaUpdate()
                    .eq(ApArticle::getId, apArticle.getId())
                    .set(ApArticle::getStaticUrl, path)
            );

        }
    }
}
