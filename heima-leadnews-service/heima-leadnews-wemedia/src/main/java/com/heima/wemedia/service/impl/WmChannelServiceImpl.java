package com.heima.wemedia.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.heima.model.common.dtos.PageResponseResult;
import com.heima.model.common.dtos.ResponseResult;
import com.heima.model.common.enums.AppHttpCodeEnum;
import com.heima.model.wemedia.dtos.WmChannelDto;
import com.heima.model.wemedia.dtos.WmChannelPageReqDto;
import com.heima.model.wemedia.pojos.WmChannel;
import com.heima.model.wemedia.pojos.WmNews;
import com.heima.wemedia.mapper.WmChannelMapper;
import com.heima.wemedia.mapper.WmNewsMapper;
import com.heima.wemedia.service.WmChannelService;
import com.heima.wemedia.service.WmNewsService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

import java.sql.Wrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional
@Slf4j
public class WmChannelServiceImpl extends ServiceImpl<WmChannelMapper, WmChannel> implements WmChannelService {
    @Autowired
    private WmChannelMapper wmChannelMapper;
    @Autowired
    private WmNewsMapper wmNewsMapper;

    /**
     * 查询所有频道，但是是媒资模块使用的
     *
     * @return
     */
    @Override
    public ResponseResult findList() {
        return ResponseResult.okResult(list());
    }

    /**
     * 查询所有频道
     *
     * @return
     */
    @Override
    public ResponseResult findAll(WmChannelPageReqDto dto) {

        dto.checkParam();

        IPage page = new Page(dto.getPage(), dto.getSize());
        page = page(page, Wrappers.<WmChannel>lambdaQuery()
                .like(StringUtils.isNotBlank(dto.getName()), WmChannel::getName, dto.getName())
                .eq(dto.getStatus() != null, WmChannel::getStatus, dto.getStatus())
        );
        ResponseResult responseResult = new PageResponseResult(dto.getPage(), dto.getSize(), (int) page.getTotal());

        List<WmChannelDto> wmChannelDtos = changeToDtos(page.getRecords());
        responseResult.setData(wmChannelDtos);
        return responseResult;

    }

    /**
     * 根据id删除频道
     *
     * @param id
     * @return
     */
    @Override
    public ResponseResult deleteById(Integer id) {
        if (id == null || id <= 0) {
            return ResponseResult.errorResult(AppHttpCodeEnum.PARAM_INVALID);
        }
        WmChannel wmChannel = wmChannelMapper.selectById(id);
        if (wmChannel == null) {
            return ResponseResult.errorResult(AppHttpCodeEnum.DATA_NOT_EXIST);
        }
        if (wmChannel.getStatus() == false) {
            return ResponseResult.errorResult(AppHttpCodeEnum.DATA_OPERATION_DENIED, "禁用状态无法删除频道");
        }

        Integer count = wmNewsMapper.selectCount(new LambdaQueryWrapper<WmNews>().eq(WmNews::getChannelId, id));
        if (count > 0) {
            return ResponseResult.errorResult(AppHttpCodeEnum.DATA_OPERATION_DENIED, "该频道下有文章，无法删除");
        }
        return ResponseResult.okResult(wmChannelMapper.deleteById(id));
    }

    /**
     * 保存或修改频道
     *
     * @param dto
     * @return
     */
    @Override
    public ResponseResult saveOrUpdate(WmChannelDto dto) {
        if (StringUtils.isBlank(dto.getName().trim())) {
            return ResponseResult.errorResult(AppHttpCodeEnum.PARAM_INVALID, "参数为空为参数无效");
        }
        WmChannel wmChannel = new WmChannel();
        dto.setName(dto.getName().trim());
        BeanUtils.copyProperties(dto, wmChannel);

        int i = 0;
        //新增
        if (dto.getId() == null) {
            WmChannel data = wmChannelMapper.selectOne(Wrappers.<WmChannel>lambdaQuery().eq(WmChannel::getName, wmChannel.getName()));
            if (data.getName().compareToIgnoreCase(wmChannel.getName()) > 0) {
                return ResponseResult.errorResult(AppHttpCodeEnum.DATA_EXIST, "频道已存在");
            }

            wmChannel.setIsDefault(true);
            wmChannel.setCreatedTime(new Date());
            i = wmChannelMapper.insert(wmChannel);
            if (i > 0) return ResponseResult.okResult(AppHttpCodeEnum.SUCCESS);
            return ResponseResult.errorResult(AppHttpCodeEnum.PARAM_INVALID, "新增失败");
        } else {
            i = wmChannelMapper.updateById(wmChannel);
            if (i > 0) return ResponseResult.okResult(AppHttpCodeEnum.SUCCESS);
            return ResponseResult.errorResult(AppHttpCodeEnum.PARAM_INVALID, "修改失败");
        }
    }

    /**
     * 将wmChannels转换为WmChannelDto
     *
     * @param wmChannels
     * @return
     */
    private List<WmChannelDto> changeToDtos(List<WmChannel> wmChannels) {
        List<WmChannelDto> wmChannelDtos = new ArrayList<>();
        for (WmChannel record : wmChannels) {
            WmChannelDto wmChannelDto = new WmChannelDto();
            BeanUtils.copyProperties(record, wmChannelDto);
            wmChannelDtos.add(wmChannelDto);
        }
        return wmChannelDtos;
    }

}