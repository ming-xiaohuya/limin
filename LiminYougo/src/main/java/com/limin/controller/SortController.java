package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.Floor;
import com.limin.pojo.SortNav;
import com.limin.service.FloorService;
import com.limin.service.SortService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@Api("分类接口")
@RestController
@RequestMapping("/api")
public class SortController {

    @Autowired
    SortService service;

    @ApiOperation(value = "查询商品分类数据接口",notes = "查询商品分类数据")
    @RequestMapping("/querySort")
    public ApiResult<HashMap<String, Object>> querySort() {

        List<SortNav> sortNavs = service.querySortList();

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("message", sortNavs);
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }
}
