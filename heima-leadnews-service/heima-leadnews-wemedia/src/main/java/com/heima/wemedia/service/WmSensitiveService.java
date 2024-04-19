package com.heima.wemedia.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmSensitiveDto;
import com.heima.model.wemedia.dtos.WmSensitivePageReqDto;
import com.heima.model.wemedia.pojos.WmChannel;
import com.heima.model.wemedia.pojos.WmSensitive;

/**
 * @author QRH
 * @date 2024/4/17 23:38
 * @description TODO
 */
public interface WmSensitiveService extends IService<WmSensitive> {
    /**
     * 根据敏感词id删除敏感词 该方法给管理员使用
     *
     * @param id 敏感词id
     * @return void
     */
  public  ResponseResult deleteSensitiveById(Integer id);

    /**
     * 查询所有敏感词
     * @return
     */
    public ResponseResult findList(WmSensitivePageReqDto dto);

    /**
     * 保存或修改敏感词
     * @param dto
     * @return
     */
    public ResponseResult saveOrUpdate(WmSensitiveDto dto);
}
