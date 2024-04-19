package com.heima.model.user.pojos;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * APP用户关注信息表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ap_user_follow")
@ApiModel(value="ApUserFollow对象", description="APP用户关注信息表")
public class ApUserFollow implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户ID")
    @TableField(value = "user_id")
    private Integer userId;

    @ApiModelProperty(value = "关注作者ID")
    @TableField(value = "follow_id")
    private Integer followId;

    @ApiModelProperty(value = "粉丝昵称")
    @TableField(value = "follow_name")
    private String followName;

    @ApiModelProperty(value = "关注度  0 偶尔感兴趣  1 一般  2 经常 3 高度")
    private Integer level;

    @ApiModelProperty(value = "是否动态通知")
    @TableField(value = "is_notice")
    private Integer isNotice;

    @ApiModelProperty(value = "创建时间")
    @TableField(value = "created_time")
    private LocalDateTime createdTime;


}
