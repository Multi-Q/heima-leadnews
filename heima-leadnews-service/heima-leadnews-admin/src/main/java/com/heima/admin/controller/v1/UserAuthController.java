package com.heima.admin.controller.v1;

import com.heima.apis.user.IUserClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.user.dtos.ApAuthDto;
import com.heima.model.user.dtos.ApAuthPageRequestDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author QRH
 * @date 2024/4/18 21:44
 * @description TODO
 */
@RestController
@RequestMapping("/user/api/v1/auth")
public class UserAuthController {
    @Autowired
    private IUserClient iUserClient;

    @PostMapping("/list")
    public ResponseResult findAll(@RequestBody ApAuthPageRequestDto dto) {
        return iUserClient.findAll(dto);
    }

    @PostMapping("/authFail")
    public ResponseResult authFail(@RequestBody ApAuthPageRequestDto dto) {
        return iUserClient.authFail(dto);
    }


    @PostMapping("/authPass")
    public ResponseResult authPass(@RequestBody ApAuthPageRequestDto dto) {
        return iUserClient.authPass(dto);
    }
}
