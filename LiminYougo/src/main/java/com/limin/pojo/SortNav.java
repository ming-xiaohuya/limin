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
@ApiModel("分类导航实体类")
public class SortNav {

    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("分类名称")
    private String name;
    @ApiModelProperty("外键编号")
    private List<SortTitle> sortTitles;
}
