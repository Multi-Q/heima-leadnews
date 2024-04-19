package com.heima.apis.user;

import com.heima.apis.user.fallback.IUserClientFallbackFactory;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.user.dtos.ApAuthDto;
import com.heima.model.user.dtos.ApAuthPageRequestDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * @author QRH
 * @date 2024/4/18 22:01
 * @description TODO
 */
@FeignClient(contextId = "iuserClient",value = "leadnews-user",fallback = IUserClientFallbackFactory.class)
public interface IUserClient {

    /**
     * 获取用户申请列表
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/user_auth/list")
    ResponseResult findAll(@RequestBody ApAuthPageRequestDto dto);

    /**
     * 审核失败
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/user_auth/authFail")
    public ResponseResult authFail(@RequestBody ApAuthPageRequestDto dto) ;


    /**
     * 审核成功
     * @param dto
     * @return
     */
    @PostMapping("/api/v1/user_auth/authPass")
    public ResponseResult authPass(@RequestBody ApAuthPageRequestDto dto);
}
