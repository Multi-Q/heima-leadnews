package com.heima.apis.wemedia.fallback;

import com.heima.apis.wemedia.IChannelClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import org.springframework.stereotype.Component;

/**
 * @author QRH
 * @date 2024/4/18 18:02
 * @description TODO
 */
@Component
public class IChannelClientFallback implements IChannelClient {

    @Override
    public ResponseResult findAllChannel(WmChannelPageReqDto dto) {
        return ResponseResult.errorResult(500,"IChannelClientFallback.java--findAllChannel()--查询失败");
    }

    /**
     * 根据id删除频道
     *
     * @param id
     * @return
     */
    @Override
    public ResponseResult deleteChannelById(Integer id) {
        return ResponseResult.errorResult(500,"IChannelClientFallback.java--deleteChannelById()--删除失败");
    }

    @Override
    public ResponseResult saveChannel(WmChannelDto dto) {
        return ResponseResult.errorResult(500,"IChannelClientFallback.java--saveChannel()--保存失败");
    }

    @Override
    public ResponseResult updateChannel(WmChannelDto dto) {
        return ResponseResult.errorResult(500,"IChannelClientFallback.java--updateChannel()--修改失败");
    }
}
