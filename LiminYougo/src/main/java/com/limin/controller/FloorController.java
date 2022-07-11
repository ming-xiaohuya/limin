package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.Floor;
import com.limin.service.FloorService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/api")
public class FloorController {


    @Autowired
    FloorService floorService;

    @ApiOperation(value = "查询楼层数据接口",notes = "查询楼层数据")
    @RequestMapping("/queryFloor")
    public ApiResult<HashMap<String, Object>> queryFloor() {

        List<Floor> floorList = floorService.queryFloorList();

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("message", floorList);
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }
}
