package com.heima.admin.service;

import com.heima.model.admin.dtos.AdminLoginDto;
import com.heima.model.admin.pojos.AdUser;
import com.baomidou.mybatisplus.extension.service.IService;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.wemedia.dtos.WmLoginDto;
import org.checkerframework.checker.units.qual.A;

/**
 * <p>
 * 管理员用户信息表 服务类
 * </p>
 *
 * @author QRH
 * @since 2024-04-17
 */
public interface AdUserService extends IService<AdUser> {
    /**
     * 管理员端登录
     * @param dto
     * @return
     */
    public ResponseResult login(AdminLoginDto dto);
}
