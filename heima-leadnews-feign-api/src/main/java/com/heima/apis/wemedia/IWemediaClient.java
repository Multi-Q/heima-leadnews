package com.heima.apis.wemedia;

import com.heima.apis.wemedia.fallback.WemediaClientFallback;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import com.heima.model.wemedia.dtos.WmSensitiveDto;
import com.heima.model.wemedia.dtos.WmSensitivePageReqDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

/**
 * @author QRH
 * @date 2024/4/17 23:33
 * @description TODO
 */
@FeignClient(contextId = "iwemediaClient",value = "leadnews-wemedia",fallback = WemediaClientFallback.class)
public interface IWemediaClient {

    /**
     * 根据敏感词id删除敏感词 该方法给管理员使用
     * @param id 敏感词id
     * @return void
     */
    @DeleteMapping("/api/v1/wemedia_sensitive/del/{id}")
    public ResponseResult deleteSensitiveById(@PathVariable("id") Integer id) ;

    /**
     * 查询所有敏感词
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/wemedia_sensitive/find")
    public ResponseResult findListSensitive(@RequestBody WmSensitivePageReqDto dto);

    /**
     * 保存敏感词
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/wemedia_sensitive/save")
    public ResponseResult saveSensitive(@RequestBody WmSensitiveDto dto);

    /**
     * 修改敏感词
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/wemedia_sensitive/update")
    public ResponseResult updateSensitive(@RequestBody WmSensitiveDto dto);


}
