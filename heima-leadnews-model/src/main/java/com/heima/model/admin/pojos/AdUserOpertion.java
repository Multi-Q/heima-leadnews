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
 * 管理员操作行为信息表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ad_user_opertion")
@ApiModel(value="AdUserOpertion对象", description="管理员操作行为信息表")
public class AdUserOpertion implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户ID")
    @TableField(value = "user_id")
    private Integer userId;

    @ApiModelProperty(value = "登录设备ID")
    @TableField(value = "equipment_id")
    private Integer equipmentId;

    @ApiModelProperty(value = "登录IP")
    private String ip;

    @ApiModelProperty(value = "登录地址")
    private String address;

    @ApiModelProperty(value = "操作类型")
    private Integer type;

    @ApiModelProperty(value = "操作描述")
    private String description;

    @ApiModelProperty(value = "登录时间")
    @TableField(value = "created_time")
    private LocalDateTime createdTime;


}
