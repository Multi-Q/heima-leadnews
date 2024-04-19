package com.heima.user.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.heima.model.common.dtos.PageResponseResult;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.common.enums.AppHttpCodeEnum;
import com.heima.model.user.dtos.ApAuthDto;
import com.heima.model.user.dtos.ApAuthPageRequestDto;
import com.heima.model.user.pojos.ApUser;
import com.heima.model.user.pojos.ApUserRealname;
import com.heima.user.mapper.ApUserMapper;
import com.heima.user.mapper.ApUserRealnameMapper;
import com.heima.user.service.IApUserRealnameService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * APP实名认证信息表 服务实现类
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Service
public class ApUserRealnameServiceImpl extends ServiceImpl<ApUserRealnameMapper, ApUserRealname> implements IApUserRealnameService {
    @Autowired
    private ApUserRealnameMapper apUserRealnameMapper;
    @Autowired
    private ApUserMapper apUserMapper;


    /**
     * 查询所有
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult findAll(ApAuthPageRequestDto dto) {
        dto.checkParam();

        IPage page = new Page(dto.getPage(), dto.getSize());
        LambdaQueryWrapper<ApUserRealname> wrapper = Wrappers.<ApUserRealname>lambdaQuery()
                .eq(dto.getId() != null, ApUserRealname::getId, dto.getId())
                .eq(dto.getStatus() != null, ApUserRealname::getStatus, dto.getStatus());
        page = page(page, wrapper);

        ResponseResult responseResult = new PageResponseResult(dto.getPage(), dto.getSize(), (int) page.getTotal());

        List<ApUserRealname> records = page.getRecords();
        List<ApAuthDto> apAuthDtos = new ArrayList<>();
        for (ApUserRealname record : records) {
            ApAuthDto apAuthDto = new ApAuthDto();
            BeanUtils.copyProperties(record, apAuthDto);
            apAuthDtos.add(apAuthDto);
        }
        responseResult.setData(apAuthDtos);


        return responseResult;
    }

    /**
     * 审核
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult auth(ApAuthPageRequestDto dto) {
        if (dto.getId() == null) {
            return ResponseResult.errorResult(AppHttpCodeEnum.PARAM_INVALID, "参数无效");
        }
        ApUserRealname apUserRealname = apUserRealnameMapper.selectOne(Wrappers.<ApUserRealname>lambdaQuery().eq(ApUserRealname::getUserId, dto.getId()));
        if (apUserRealname == null) return ResponseResult.errorResult(AppHttpCodeEnum.DATA_NOT_EXIST);

        if (StringUtils.isNotBlank(dto.getMsg().trim())) {
            // 不为空，说明驳回，给出驳回原因
            //先根据用户的id查询出用户实名认证信息，在修改相应字段
            apUserRealname.setStatus((short)2);
            apUserRealname.setReason(dto.getMsg());
            apUserRealname.setUpdatedTime(LocalDateTime.now());
            //再更新用户的信息
            update(apUserRealname, Wrappers.<ApUserRealname>lambdaUpdate().eq(ApUserRealname::getId, apUserRealname.getId()));
            return ResponseResult.okResult(AppHttpCodeEnum.SUCCESS);
        } else {
            //同意申请通过
            apUserRealname.setStatus((short)9); //9表示通过
            apUserRealname.setUpdatedTime(LocalDateTime.now());
            update(apUserRealname, Wrappers.<ApUserRealname>lambdaUpdate().eq(ApUserRealname::getId, apUserRealname.getId()));

            ApUser apUser = apUserMapper.selectOne(Wrappers.<ApUser>lambdaQuery().eq(ApUser::getId, apUserRealname.getUserId()));
            if (apUser == null) return ResponseResult.errorResult(AppHttpCodeEnum.DATA_NOT_EXIST, "无法通过，因为该用户不存在");
            apUser.setCertification(true);
            apUser.setIdentityAuthentication(true);
            apUser.setStatus((short)0); //0正常，1锁定

            apUserMapper.updateById(apUser);

            return ResponseResult.okResult(AppHttpCodeEnum.SUCCESS);
        }
    }


}
