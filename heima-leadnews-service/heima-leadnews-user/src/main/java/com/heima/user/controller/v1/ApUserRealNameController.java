package com.heima.user.controller.v1;

import com.heima.apis.user.IUserClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.user.dtos.ApAuthPageRequestDto;
import com.heima.user.service.IApUserRealnameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author QRH
 * @date 2024/4/18 21:43
 * @description TODO
 */

@RestController
@RequestMapping("/api/v1/user_auth")
public class ApUserRealNameController implements IUserClient {
    @Autowired
    private IApUserRealnameService iApUserRealnameService;

    /**
     * 获取用户申请列表
     *
     * @param dto
     * @return
     */
    @Override
    @PostMapping("/list")
    public ResponseResult findAll(ApAuthPageRequestDto dto) {
        return iApUserRealnameService.findAll(dto);
    }

    /**
     * 审核失败
     *
     * @param dto
     * @return
     */
    @Override
    @PostMapping("/authFail")
    public ResponseResult authFail(ApAuthPageRequestDto dto) {
        return iApUserRealnameService.auth(dto);
    }

    /**
     * 审核成功
     *
     * @param dto
     * @return
     */
    @Override
    @PostMapping("/authPass")
    public ResponseResult authPass(ApAuthPageRequestDto dto) {
        return iApUserRealnameService.auth(dto);
    }
}

