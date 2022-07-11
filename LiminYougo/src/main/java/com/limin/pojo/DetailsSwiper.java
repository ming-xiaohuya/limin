package com.limin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("商品详情轮播实体类")
public class DetailsSwiper {

    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("图片地址")
    private String DetailsSrc;
    @ApiModelProperty("外键编号")
    private String pid;
    @ApiModelProperty("创建时间")
    private String createDate;
}
