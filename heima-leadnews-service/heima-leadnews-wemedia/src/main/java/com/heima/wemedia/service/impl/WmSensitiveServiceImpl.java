package com.heima.wemedia.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.heima.model.common.dtos.PageResponseResult;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.common.enums.AppHttpCodeEnum;
import com.heima.model.wemedia.dtos.WmSensitiveDto;
import com.heima.model.wemedia.dtos.WmSensitivePageReqDto;
import com.heima.model.wemedia.pojos.WmSensitive;
import com.heima.wemedia.mapper.WmSensitiveMapper;
import com.heima.wemedia.service.WmChannelService;
import com.heima.wemedia.service.WmSensitiveService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author QRH
 * @date 2024/4/17 23:39
 * @description TODO
 */
@Service
@Slf4j
public class WmSensitiveServiceImpl extends ServiceImpl<WmSensitiveMapper, WmSensitive> implements WmSensitiveService {
    @Autowired
    private WmSensitiveMapper wmSensitiveMapper;


    /**
     * 根据敏感词id删除敏感词 该方法给管理员使用
     *
     * @param id 敏感词id
     * @return void
     */
    @Override
    public ResponseResult deleteSensitiveById(Integer id) {
        //校验参数
        if (id == null || id <= 0) {
            return ResponseResult.errorResult(AppHttpCodeEnum.PARAM_INVALID, "没有该敏感词或参数无效");
        }
        int i = wmSensitiveMapper.deleteById(id);
        if (i > 0) {
            return ResponseResult.okResult(AppHttpCodeEnum.SUCCESS);
        } else {
            log.info("WmSensitiveServiceImpl.java---deleteSensitiveById() 删除失败");
            return ResponseResult.errorResult(AppHttpCodeEnum.DATA_NOT_EXIST, "删除失败");
        }
    }

    /**
     * 查询所有敏感词
     *
     * @return
     */
    @Override
    public ResponseResult findList(WmSensitivePageReqDto dto) {
        //检查参数
        dto.checkParam();
        IPage page = new Page(dto.getPage(), dto.getSize());
        LambdaQueryWrapper<WmSensitive> lambdaQueryWrapper = new LambdaQueryWrapper<WmSensitive>()
                .like(StringUtils.isNotBlank(dto.getName()), WmSensitive::getSensitives, dto.getName())
                .orderByDesc(WmSensitive::getCreatedTime);

        page = page(page, lambdaQueryWrapper);

        //返回结果
        ResponseResult responseResult = new PageResponseResult(dto.getPage(), dto.getSize(), (int) page.getTotal());

        List<WmSensitiveDto> wmSensitiveDtos = new ArrayList<>();
        List<WmSensitive> records = page.getRecords();
        for (WmSensitive record : records) {
            WmSensitiveDto wmSensitiveDto = new WmSensitiveDto();
            BeanUtils.copyProperties(record, wmSensitiveDto);
            wmSensitiveDtos.add(wmSensitiveDto);
        }
        responseResult.setData(wmSensitiveDtos);

        return responseResult;
    }


    /**
     * 保存或修改敏感词
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult saveOrUpdate(WmSensitiveDto dto) {
        if (StringUtils.isBlank(dto.getSensitives().trim())) {
            return ResponseResult.errorResult(AppHttpCodeEnum.PARAM_INVALID, "参数为空或参数无效");
        }

        WmSensitive wmSensitive = new WmSensitive();
        dto.setSensitives(dto.getSensitives().trim());
        BeanUtils.copyProperties(dto, wmSensitive);
        //如果有id，那么就是修改，没有id则是新增
        int i = 0;

        if (dto.getId() == null) {
            WmSensitive data = wmSensitiveMapper.selectOne(new LambdaQueryWrapper<WmSensitive>().eq(WmSensitive::getSensitives, wmSensitive.getSensitives()));
            if (data != null || data.getSensitives().compareToIgnoreCase(wmSensitive.getSensitives()) > 0) {
                return ResponseResult.errorResult(AppHttpCodeEnum.DATA_EXIST, "敏感词已存在");
            }
            wmSensitive.setCreatedTime(new Date());
            i = wmSensitiveMapper.insert(wmSensitive);
            if (i > 0) return ResponseResult.okResult(AppHttpCodeEnum.SUCCESS);
            else return ResponseResult.errorResult(AppHttpCodeEnum.DATA_ERROR, "创建失败");
        } else {
            i = wmSensitiveMapper.updateById(wmSensitive);
            if (i > 0) return ResponseResult.okResult(AppHttpCodeEnum.SUCCESS);
            else return ResponseResult.errorResult(AppHttpCodeEnum.DATA_NOT_EXIST, "修改失败");
        }
    }
}
