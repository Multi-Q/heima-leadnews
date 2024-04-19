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
 * 页面功能信息表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ad_function")
@ApiModel(value="AdFunction对象", description="页面功能信息表")
public class AdFunction implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "功能名称")
    private String name;

    @ApiModelProperty(value = "功能代码")
    private String code;

    @ApiModelProperty(value = "父功能")
    @TableField(value = "parent_id")
    private Integer parentId;

    @ApiModelProperty(value = "登录时间")
    @TableField(value = "created_time")
    private LocalDateTime createdTime;


}
