package com.limin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel("导航实体类")
public class Nav {

    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("标题")
    private String title;
    @ApiModelProperty("导航图片地址")
    private String navSrc;
    @ApiModelProperty("导航链接地址")
    private String navUrl;
    @ApiModelProperty("创建时间")
    private String createDate;
}
