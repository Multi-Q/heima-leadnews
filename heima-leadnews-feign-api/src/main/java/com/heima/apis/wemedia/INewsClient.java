package com.heima.apis.wemedia;

import com.heima.apis.wemedia.fallback.INewsClientFallbackFactory;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmAuthNewsPageReqDto;
import com.heima.model.wemedia.dtos.WmNewsPageReqDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * @author QRH
 * @date 2024/4/19 20:22
 * @description TODO
 */
@FeignClient(contextId = "inewsClient", value = "leadnews-wemedia", fallbackFactory = INewsClientFallbackFactory.class)
public interface INewsClient {
    /**
     * 查询所有
     *
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/news/auth_news/list_vo")
    public ResponseResult list(@RequestBody WmAuthNewsPageReqDto dto);

    /**
     * 根据id查找文章
     *
     * @param id
     * @return
     */
    @GetMapping("/api/v1/news/auth_news/one_vo/{id}")
    public ResponseResult findNewsById(@PathVariable("id") Integer id);

    /**
     * 审核通过
     *
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/news/auth_news/auth_pass")
    public ResponseResult authPass(@RequestBody WmAuthNewsPageReqDto dto);

    /**
     * 审核失败
     *
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/news/auth_news/auth_fail")
    public ResponseResult authFail(@RequestBody WmAuthNewsPageReqDto dto);
}
