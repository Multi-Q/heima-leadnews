package com.heima.admin.controller.v1;

import com.heima.apis.wemedia.INewsClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmAuthNewsPageReqDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author QRH
 * @date 2024/4/19 20:13
 * @description TODO
 */
@RestController
@RequestMapping("/wemedia/api/v1/news")
public class WemediaNewsController {
    @Autowired
    private INewsClient inewsClient;


    @PostMapping("/list_vo")
    public ResponseResult list(@RequestBody WmAuthNewsPageReqDto dto) {
        return inewsClient.list(dto);
    }

    @GetMapping("/one_vo/{id}`")
    public ResponseResult findNewsById(@PathVariable("id") Integer id) {
        return inewsClient.findNewsById(id);
    }

    @PostMapping("/auth_pass")
    public ResponseResult authPass(@RequestBody WmAuthNewsPageReqDto dto) {
        return inewsClient.authPass(dto);
    }


    @PostMapping("/auth_fail")
    public ResponseResult authFail(@RequestBody WmAuthNewsPageReqDto dto) {
        return inewsClient.authFail(dto);
    }
}
