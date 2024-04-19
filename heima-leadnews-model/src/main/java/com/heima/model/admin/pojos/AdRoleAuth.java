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
 * 角色权限信息表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ad_role_auth")
@ApiModel(value="AdRoleAuth对象", description="角色权限信息表")
public class AdRoleAuth implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "角色ID")
    @TableField(value = "role_id")
    private Integer roleId;

    @ApiModelProperty(value = "资源类型  0 菜单  1 功能")
    private Integer type;

    @ApiModelProperty(value = "资源ID")
    @TableField(value = "entry_id")
    private Integer entryId;

    @ApiModelProperty(value = "登录时间")
    @TableField(value = "created_time")
    private LocalDateTime createdTime;


}
