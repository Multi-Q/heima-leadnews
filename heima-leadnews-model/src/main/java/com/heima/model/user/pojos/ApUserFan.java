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
 * APP用户粉丝信息表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ap_user_fan")
@ApiModel(value="ApUserFan对象", description="APP用户粉丝信息表")
public class ApUserFan implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户ID")
    @TableField(value = "user_id")
    private Integer userId;

    @ApiModelProperty(value = "粉丝ID")
    @TableField(value = "fans_id")
    private Integer fansId;

    @ApiModelProperty(value = "粉丝昵称")
    @TableField(value = "fans_name")
    private String fansName;

    @ApiModelProperty(value = "粉丝忠实度  0 正常  1 潜力股  2 勇士  3 铁杆  4 老铁")
    private Integer level;

    @ApiModelProperty(value = "创建时间")
    @TableField(value = "created_time")
    private LocalDateTime createdTime;

    @ApiModelProperty(value = "是否可见我动态")
    @TableField(value = "is_display")
    private Integer isDisplay;

    @ApiModelProperty(value = "是否屏蔽私信")
    @TableField(value = "is_shield_letter")
    private Integer isShieldLetter;

    @ApiModelProperty(value = "是否屏蔽评论")
    @TableField(value = "is_shield_comment")
    private Integer isShieldComment;


}
