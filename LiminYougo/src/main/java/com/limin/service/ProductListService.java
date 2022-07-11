package com.limin.service;

import com.limin.pojo.ProductList;

import java.util.List;

public interface ProductListService {

    List<ProductList> queryProductList();

    int createProduct(ProductList product);
}
