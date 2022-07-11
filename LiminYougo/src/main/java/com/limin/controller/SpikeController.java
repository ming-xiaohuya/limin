package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.Spike;
import com.limin.service.SpikeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api("秒杀商品接口")
@RestController
@RequestMapping("/api")
public class SpikeController {

    @Autowired
    SpikeService spikeService;

    @ApiOperation(value = "查询所有秒杀商品数据接口",notes = "查询所有秒杀商品数据")
    @RequestMapping("/querySpikeList")
    public ApiResult<List<Spike>> querySpikeList() {

        List<Spike> spikeList = spikeService.querySpikeList();

        return ApiResult.ok(spikeList);
    }
}
