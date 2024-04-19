package com.heima.admin.controller.v1;

import com.heima.apis.wemedia.IWemediaClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmSensitiveDto;
import com.heima.model.wemedia.dtos.WmSensitivePageReqDto;
import com.heima.model.wemedia.pojos.WmSensitive;
import io.swagger.annotations.Api;
import io.swagger.annotations.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author QRH
 * @date 2024/4/17 23:23
 * @description TODO
 */
@RestController
@RequestMapping("/wemedia/api/v1/sensitive")
public class SensitiveController {

    @Autowired
    private IWemediaClient iWemediaClient;

    @DeleteMapping("/del/{id}")
    public ResponseResult deleteSensitiveById(@PathVariable("id") Integer id) {
        return iWemediaClient.deleteSensitiveById(id);
    }


    @PostMapping("/list")
    public ResponseResult findList(@RequestBody WmSensitivePageReqDto dto) {
        return iWemediaClient.findListSensitive(dto);
    }

    @PostMapping("/save")
    public ResponseResult save(@RequestBody WmSensitiveDto dto) {
        return iWemediaClient.saveSensitive(dto);
    }

    @PostMapping("/update")
    public ResponseResult update(@RequestBody WmSensitiveDto dto) {
        return iWemediaClient.updateSensitive(dto);
    }


}
