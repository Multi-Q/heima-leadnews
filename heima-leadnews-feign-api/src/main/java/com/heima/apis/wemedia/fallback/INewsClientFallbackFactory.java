package com.heima.apis.wemedia.fallback;

import com.heima.apis.wemedia.INewsClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmAuthNewsPageReqDto;
import com.heima.model.wemedia.dtos.WmNewsPageReqDto;
import org.springframework.stereotype.Component;

/**
 * @author QRH
 * @date 2024/4/19 20:23
 * @description TODO
 */
@Component
public class INewsClientFallbackFactory implements INewsClient {
    /**
     * 查询所有
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult list(WmAuthNewsPageReqDto dto) {
        return ResponseResult.errorResult(500,"INewsClientFallbackFactory.java--list()  查询失败" );
    }

    /**
     * 根据id查找文章
     *
     * @param id
     * @return
     */
    @Override
    public ResponseResult findNewsById(Integer id) {
        return ResponseResult.errorResult(500,"INewsClientFallbackFactory.java--findNewsById()  查询失败");
    }

    /**
     * 审核通过
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult authPass(WmAuthNewsPageReqDto dto) {
        return ResponseResult.errorResult(500,"INewsClientFallbackFactory.java--authPass()  审核通过失败" );
    }

    /**
     * 审核失败
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult authFail(WmAuthNewsPageReqDto dto) {
        return ResponseResult.errorResult(500,"INewsClientFallbackFactory.java--authFail()  审核失败") ;
    }
}
