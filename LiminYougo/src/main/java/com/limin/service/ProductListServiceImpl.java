package com.limin.service;

import com.limin.mapper.ProductListMapper;
import com.limin.pojo.ProductList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductListServiceImpl implements ProductListService {

    @Autowired
    ProductListMapper productMapper;

    @Override
    public List<ProductList> queryProductList() {
        return productMapper.queryProductList();
    }

    @Override
    public int createProduct(ProductList product) {
        return productMapper.createProduct(product);
    }
}
