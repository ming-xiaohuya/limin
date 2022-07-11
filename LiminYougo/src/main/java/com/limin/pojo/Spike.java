package com.limin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel("秒杀实体类")
public class Spike {

    @ApiModelProperty("主键编号")
    private int id;
    @ApiModelProperty("图片路径")
    private String spikeSrc;
    @ApiModelProperty("链接路径")
    private String spikeUrl;
    @ApiModelProperty("价格")
    private String spikePrice;
    @ApiModelProperty("创建时间")
    private String createDate;
}
