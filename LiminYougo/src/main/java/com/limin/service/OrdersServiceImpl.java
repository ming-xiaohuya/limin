package com.limin.service;

import com.limin.mapper.OrdersMapper;
import com.limin.pojo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    OrdersMapper orderMapper;

    @Override
    public List<Orders> queryOrderType(int type) {
        return orderMapper.queryOrderType(type);
    }
}
