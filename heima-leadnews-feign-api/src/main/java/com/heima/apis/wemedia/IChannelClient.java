package com.heima.apis.wemedia;

import com.heima.apis.wemedia.fallback.IChannelClientFallback;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * @author QRH
 * @date 2024/4/18 19:48
 * @description TODO
 */
@FeignClient(contextId = "ichannelClient",value = "leadnews-wemedia",fallback = IChannelClientFallback.class)
public interface IChannelClient {

    /**
     * 查询所有频道
     * @return
     */
    @PostMapping("/api/v1/channel/channel_list")
    public ResponseResult findAllChannel(@RequestBody WmChannelPageReqDto dto);

    /**
     * 根据id删除频道
     * @param id
     * @return
     */
    @GetMapping("/api/v1/channel/del/{id}")
    public ResponseResult deleteChannelById(@PathVariable("id") Integer id);

    @PostMapping("/api/v1/channel/save")
    ResponseResult saveChannel(@RequestBody WmChannelDto dto);

    @PostMapping("/api/v1/channel/update")
    ResponseResult updateChannel(@RequestBody WmChannelDto dto);
}
