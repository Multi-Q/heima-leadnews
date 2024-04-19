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
 * 管理员设备信息表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ad_user_equipment")
@ApiModel(value="AdUserEquipment对象", description="管理员设备信息表")
public class AdUserEquipment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户ID")
    @TableField(value = "user_id")
    private Integer userId;

    @ApiModelProperty(value = "0PC  1ANDROID 2IOS  3PAD  9 其他")
    private Integer type;

    @ApiModelProperty(value = "设备版本")
    private String version;

    @ApiModelProperty(value = "设备系统")
    private String sys;

    @ApiModelProperty(value = "设备唯一号，MD5加密")
    private String no;

    @ApiModelProperty(value = "登录时间")
    @TableField(value = "created_time")
    private LocalDateTime createdTime;


}
