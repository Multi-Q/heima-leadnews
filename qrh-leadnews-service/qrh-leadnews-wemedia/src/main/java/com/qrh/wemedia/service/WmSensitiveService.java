package com.qrh.wemedia.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.qrh.model.common.dtos.ResponseResult;
import com.qrh.model.wemedia.dtos.SensitiveDto;
import com.qrh.model.wemedia.pojos.WmSensitive;

/**
 * @author QRH
 * @date 2024/4/17 23:38
 * @description TODO
 */
public interface WmSensitiveService extends IService<WmSensitive>{

  /**
   * 查询
   * @param dto
   * @return
   */
  ResponseResult listSensitive(SensitiveDto dto);

  /**
   * 新增
   * @param wmSensitive
   * @return
   */
  ResponseResult insertSensitive(WmSensitive wmSensitive);

  /**
   * 修改
   * @param wmSensitive
   * @return
   */
  ResponseResult updateSensitive(WmSensitive wmSensitive);

  /**
   * 删除
   * @param id
   * @return
   */
  ResponseResult deleteSensitive(Integer id);
}
