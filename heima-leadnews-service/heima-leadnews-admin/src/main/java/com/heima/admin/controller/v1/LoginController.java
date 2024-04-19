package com.heima.admin.controller.v1;

import com.heima.admin.service.AdUserService;
import com.heima.model.admin.dtos.AdminLoginDto;
import com.heima.model.common.dtos.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author QRH
 * @date 2024/4/17 17:23
 * @description TODO
 */
@RestController
public class LoginController {

    @Autowired
    private AdUserService adUserService;


    @PostMapping("/admin/login/in")
    public ResponseResult login(@RequestBody AdminLoginDto dto){
        return adUserService.login(dto);
    }
}
