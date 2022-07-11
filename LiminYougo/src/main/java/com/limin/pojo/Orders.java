package com.limin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("订单列表实体类")
public class Orders {
    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("标题")
    private String title;
    @ApiModelProperty("图片地址")
    private String orderSrc;
    @ApiModelProperty("实付金额")
    private int price;
    @ApiModelProperty("商品数量")
    private int orderNum;
    @ApiModelProperty("参数")
    private int orderType;
    @ApiModelProperty("创建时间")
    private String createDate;
}
