package com.heima.apis.wemedia.fallback;

import com.heima.apis.wemedia.IWemediaClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import com.heima.model.wemedia.dtos.WmSensitiveDto;
import com.heima.model.wemedia.dtos.WmSensitivePageReqDto;
import org.springframework.stereotype.Component;

/**
 * @author QRH
 * @date 2024/4/17 23:34
 * @description TODO
 */
@Component
public class WemediaClientFallback implements IWemediaClient {
    @Override
    public ResponseResult deleteSensitiveById(Integer id) {
        return ResponseResult.errorResult(500,"WemediaClientFallback.java--deleteSensitiveById()  远程调用失败");
    }

    @Override
    public ResponseResult findListSensitive(WmSensitivePageReqDto dto) {
        return ResponseResult.errorResult(500,"WemediaClientFallback.java--findListSensitive()  远程调用失败");
    }

    @Override
    public ResponseResult saveSensitive(WmSensitiveDto dto) {
        return ResponseResult.errorResult(500,"WemediaClientFallback.java--saveSensitive()  远程调用失败");
    }

    @Override
    public ResponseResult updateSensitive(WmSensitiveDto dto) {
        return ResponseResult.errorResult(500,"WemediaClientFallback.java--updateSensitive()  远程调用失败");
    }
}
