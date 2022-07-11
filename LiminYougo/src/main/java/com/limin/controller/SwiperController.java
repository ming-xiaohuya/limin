package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.Swiper;
import com.limin.service.SwiperService;
import com.limin.utils.utilsDate;
import com.limin.utils.utilsID;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api("轮播图接口")
@RestController
@RequestMapping("/swiper")
public class SwiperController {

    @Autowired
    SwiperService swiperService;

    @ApiOperation(value = "查询所有轮播数据",notes = "查询所有轮播数据")
    @RequestMapping("/querySwiper")
    public ApiResult<List<Swiper>> querySwiper() {

        List<Swiper> swiperList = swiperService.querySwiperList();

        return ApiResult.ok(swiperList);
    }

    @ApiOperation(value = "创建轮播图接口",notes = "创建轮播图")
    @RequestMapping("/createSwiper")
    public ApiResult<HashMap<String, Object>> createSwiper(@RequestBody Map<String,String> map) {

        if (map != null) {
            Swiper swiper = new Swiper();
            swiper.setId(utilsID.getId());
            swiper.setImageUrl(map.get("imageUrl"));
            swiper.setImageLink(map.get("imageLink"));
            swiper.setImageAlt(map.get("imageAlt"));
            swiper.setCreateDate(utilsDate.getDate());

            swiperService.createSwiper(swiper);
        }
        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "创建轮播图接口",notes = "创建轮播图")
    @RequestMapping("/updateSwiper")
    public ApiResult<HashMap<String, Object>> updateSwiper(@RequestBody Swiper swiper) {
        if (swiper != null) {
            swiperService.updateSwiper(swiper);
        }

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "根据ID删除用户名接口", notes = "根据ID删除用户")
    @PostMapping("/deleteSwiper")
    public ApiResult<HashMap<String, Object>> deleteSwiper(@RequestParam("id") String id) {

        swiperService.deleteSwiperById(id);
        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");
        return ApiResult.ok(hs);
    }

}
