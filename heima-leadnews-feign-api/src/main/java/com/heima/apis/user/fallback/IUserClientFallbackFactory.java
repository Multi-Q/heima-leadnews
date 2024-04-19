package com.heima.apis.user.fallback;

import com.heima.apis.user.IUserClient;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.user.dtos.ApAuthDto;
import com.heima.model.user.dtos.ApAuthPageRequestDto;
import org.springframework.stereotype.Component;

/**
 * @author QRH
 * @date 2024/4/18 22:01
 * @description TODO
 */
@Component
public class IUserClientFallbackFactory implements IUserClient {
    /**
     * 获取用户申请列表
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult findAll(ApAuthPageRequestDto dto) {
        return null;
    }

    /**
     * 审核成功
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult authFail(ApAuthPageRequestDto dto) {
        return null;
    }

    /**
     * 审核成功
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult authPass(ApAuthPageRequestDto dto) {
        return null;
    }
}
