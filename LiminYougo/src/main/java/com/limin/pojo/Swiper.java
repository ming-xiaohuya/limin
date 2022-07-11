package com.limin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel("轮播图实体类")
public class Swiper {

    @ApiModelProperty("主键编号")
    private String id;
    @ApiModelProperty("轮播图地址")
    private String imageUrl;
    @ApiModelProperty("轮播图跳转地址")
    private String imageLink;
    @ApiModelProperty("提示文字")
    private String imageAlt;
    @ApiModelProperty("创建时间")
    private String createDate;
}
