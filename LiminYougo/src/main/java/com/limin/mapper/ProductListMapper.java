package com.limin.mapper;

import com.limin.pojo.ProductList;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ProductListMapper {

    List<ProductList> queryProductList();

    int createProduct(ProductList product);
}
