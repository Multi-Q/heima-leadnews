package com.heima.wemedia.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import com.heima.model.wemedia.pojos.WmChannel;
import org.springframework.web.bind.annotation.RequestBody;

public interface WmChannelService extends IService<WmChannel> {

    /**
     * 查询所有频道
     * @return
     */
    public ResponseResult findAll(  WmChannelPageReqDto dto);
    /**
     * 根据id删除频道
     *
     * @param id
     * @return
     */
    public ResponseResult deleteById(Integer id);

    /**
     * 保存或修改频道
     * @param dto
     * @return
     */
    public ResponseResult saveOrUpdate(  WmChannelDto dto);

    /**
     * 查询所有频道，但是是媒资模块使用的
     * @return
     */
   public ResponseResult findList();
}