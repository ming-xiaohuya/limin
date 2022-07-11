package com.limin.service;

import com.limin.pojo.Orders;

import java.util.List;

public interface OrdersService {
    List<Orders> queryOrderType(int type);
}
