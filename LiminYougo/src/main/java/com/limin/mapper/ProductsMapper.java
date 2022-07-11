package com.limin.mapper;

import com.limin.pojo.Products;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface ProductsMapper {

    List<Products> queryProducts(Map<String,Integer> map);

    List<Products> queryProductsById(Map<String,Integer> map);

    Products queryProductsId(int id);

    List<Products> query(String title);
}
