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
@ApiModel("分类内容实体类")
public class SortContent {

    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("分类名称")
    private String name;
    @ApiModelProperty("图片地址")
    private String sortSrc;
    @ApiModelProperty("外键编号")
    private int tid;
    @ApiModelProperty("创建时间")
    private String createDate;

}
