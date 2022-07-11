package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.Orders;
import com.limin.service.OrdersService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@Api("订单列表接口")
@RestController
@RequestMapping("/api")
public class OrderController {

    @Autowired
    OrdersService orderService;

    @ApiOperation(value = "查询所有订单数据接口",notes = "查询所有订单数据")
    @RequestMapping("/queryOrderType")
    public ApiResult<HashMap<String, Object>> queryOrderType(int type) {
        List<Orders> orderList = orderService.queryOrderType(type);
        HashMap<String, Object> hs = new HashMap<>();
        hs.put("message", orderList);
        hs.put("msg", "请求成功");
        return ApiResult.ok(hs);
    }
}
