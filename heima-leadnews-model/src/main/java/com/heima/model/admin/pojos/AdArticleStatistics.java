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
 * 文章数据统计表
 * </p>
 *
 * @author QRH
 * @since 2024-04-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ad_article_statistics")
@ApiModel(value="AdArticleStatistics对象", description="文章数据统计表")
public class AdArticleStatistics implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "主账号ID")
    @TableField(value = "article_we_media")
    private Integer articleWeMedia;

    @ApiModelProperty(value = "子账号ID")
    @TableField(value = "article_crawlers")
    private Integer articleCrawlers;

    @ApiModelProperty(value = "频道ID")
    @TableField(value = "channel_id")
    private Integer channelId;

    @ApiModelProperty(value = "草读量")
    @TableField(value = "read_20")
    private Integer read20;

    @ApiModelProperty(value = "读完量")
    @TableField(value = "read_100")
    private Integer read100;

    @ApiModelProperty(value = "阅读量")
    @TableField(value = "read_count")
    private Integer readCount;

    @ApiModelProperty(value = "评论量")
    private Integer comment;

    @ApiModelProperty(value = "关注量")
    private Integer follow;

    @ApiModelProperty(value = "收藏量")
    private Integer collection;

    @ApiModelProperty(value = "转发量")
    private Integer forward;

    @ApiModelProperty(value = "点赞量")
    private Integer likes;

    @ApiModelProperty(value = "不喜欢")
    private Integer unlikes;

    @ApiModelProperty(value = "unfollow")
    private Integer unfollow;

    @ApiModelProperty(value = "创建时间")
    @TableField(value = "created_time")
    private LocalDateTime createdTime;


}
