package com.limin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel("楼层实体类")
public class ProductList {

    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("图片名")
    private String name;
    @ApiModelProperty("图片地址")
    private String imageSrc;
    @ApiModelProperty("图片链接地址")
    private String imageUrl;
    @ApiModelProperty("外键编号")
    private int fid;
    @ApiModelProperty("创建时间")
    private String createDate;
}
