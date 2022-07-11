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
@ApiModel("楼层标题实体类")
public class Floor {
    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("图片名")
    private String name;
    @ApiModelProperty("图片地址")
    private String imageSrc;
    @ApiModelProperty("创建时间")
    private String createDate;

    private List<ProductList> products;
}
