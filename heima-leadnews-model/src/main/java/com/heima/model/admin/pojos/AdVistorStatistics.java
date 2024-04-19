package com.heima.model.admin.pojos;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 访问数据统计表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ad_vistor_statistics")
@ApiModel(value="AdVistorStatistics对象", description="访问数据统计表")
public class AdVistorStatistics implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "日活")
    private Integer activity;

    @ApiModelProperty(value = "访问量")
    private Integer vistor;

    @ApiModelProperty(value = "IP量")
    private Integer ip;

    @ApiModelProperty(value = "注册量")
    private Integer register;

    @ApiModelProperty(value = "创建时间")
    @TableField(value="created_time")
    private LocalDateTime createdTime;


}
