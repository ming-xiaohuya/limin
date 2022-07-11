package com.limin.mapper;

import com.limin.pojo.Orders;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface OrdersMapper {

    List<Orders> queryOrderType(int type);
}
