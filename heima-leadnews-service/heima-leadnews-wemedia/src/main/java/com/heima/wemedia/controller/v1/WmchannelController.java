package com.heima.wemedia.controller.v1;

import com.heima.apis.wemedia.IChannelClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import com.heima.wemedia.service.WmChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/channel")
public class WmchannelController implements IChannelClient {

    @Autowired
    private WmChannelService wmChannelService;

    @PostMapping("/channel_list")
    public ResponseResult findAllChannel(@RequestBody  WmChannelPageReqDto dto) {
        return wmChannelService.findAll(dto);
    }

    @GetMapping("/channels")
    public ResponseResult findAll() {
        return wmChannelService.findList();
    }

    /**
     * 根据id删除频道
     *
     * @param id
     * @return
     */
    @GetMapping("/del/{id}")
    public ResponseResult deleteChannelById(@PathVariable("id") Integer id) {
        return wmChannelService.deleteById(id);
    }

    @PostMapping("/save")
    public ResponseResult saveChannel(@RequestBody WmChannelDto dto) {
        return wmChannelService.saveOrUpdate(dto);
    }

    @PostMapping("/update")
    public ResponseResult updateChannel(@RequestBody WmChannelDto dto) {
        return wmChannelService.saveOrUpdate(dto);
    }
}
