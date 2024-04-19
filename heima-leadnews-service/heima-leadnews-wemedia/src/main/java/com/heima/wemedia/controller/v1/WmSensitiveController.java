package com.heima.wemedia.controller.v1;

import com.heima.apis.wemedia.IWemediaClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmSensitiveDto;
import com.heima.model.wemedia.dtos.WmSensitivePageReqDto;
import com.heima.wemedia.service.WmSensitiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author QRH
 * @date 2024/4/17 23:37
 * @description TODO
 */
@RestController
@RequestMapping("/api/v1/wemedia_sensitive")
public class WmSensitiveController implements IWemediaClient{

    @Autowired
    private WmSensitiveService wmSensitiveService;

    /**
     * 根据敏感词id删除敏感词 该方法给管理员使用
     *
     * @param id 敏感词id
     * @return void
     */
    @DeleteMapping("/del/{id}")
    public ResponseResult deleteSensitiveById(@PathVariable("id") Integer id) {
        return wmSensitiveService.deleteSensitiveById(id);
    }

    @PostMapping("/find")
    public ResponseResult findListSensitive(@RequestBody WmSensitivePageReqDto dto){
        return wmSensitiveService.findList(dto) ;
    }

    @PostMapping("/save")
    public ResponseResult saveSensitive(@RequestBody WmSensitiveDto dto){
        return wmSensitiveService.saveOrUpdate(dto);
    }

    @PostMapping("/update")
    public ResponseResult updateSensitive(@RequestBody WmSensitiveDto dto){
        return wmSensitiveService.saveOrUpdate(dto);
    }


}
