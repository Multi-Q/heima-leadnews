package com.heima.admin.controller.v1;

import com.heima.apis.wemedia.IChannelClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author QRH
 * @date 2024/4/18 18:06
 * @description TODO
 */
@RestController
@RequestMapping("/wemedia/api/v1/channel")
public class ChannelController {
    @Autowired
    private IChannelClient  channelClient;

    @PostMapping("/list")
    public ResponseResult find(@RequestBody  WmChannelPageReqDto dto) {
        return channelClient.findAllChannel(dto);
    }

    @GetMapping("/del/{id}")
    public ResponseResult deleteById(@PathVariable("id") Integer id) {
        return channelClient.deleteChannelById(id);
    }

    @PostMapping("/save")
    public ResponseResult save(@RequestBody WmChannelDto dto) {
        return channelClient.saveChannel(dto);
    }

    @PostMapping("/update")
    public ResponseResult update(@RequestBody WmChannelDto dto) {
        return channelClient.updateChannel(dto);
    }

}
