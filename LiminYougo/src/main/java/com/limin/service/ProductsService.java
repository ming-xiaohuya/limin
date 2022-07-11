package com.limin.service;

import com.limin.pojo.Products;

import java.util.List;
import java.util.Map;

public interface ProductsService {

    List<Products> queryProducts(Map<String,Integer> map);

    List<Products> queryProductsById(Map<String,Integer> map);

    Products queryProductsId(int id);

    List<Products> query(String title);
}
