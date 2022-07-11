package com.limin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel("商品列表实体类")
public class Products {

    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("商品标题")
    private String title;
    @ApiModelProperty("商品图片地址")
    private String productSrc;
    @ApiModelProperty("商品价格")
    private String price;
    @ApiModelProperty("外键编号")
    private int cid;
    @ApiModelProperty("创建时间")
    private String createDate;
}
