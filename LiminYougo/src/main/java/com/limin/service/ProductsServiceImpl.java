package com.limin.service;

import com.limin.mapper.ProductsMapper;
import com.limin.pojo.Products;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ProductsServiceImpl implements ProductsService {

    @Autowired
    ProductsMapper productsMapper;

    @Override
    public List<Products> queryProducts(Map<String, Integer> map) {
        return productsMapper.queryProducts(map);
    }

    @Override
    public List<Products> queryProductsById(Map<String,Integer> map) {
        return productsMapper.queryProductsById(map);
    }

    @Override
    public Products queryProductsId(int id) {
        return productsMapper.queryProductsId(id);
    }

    @Override
    public List<Products> query(String title) {
        return productsMapper.query(title);
    }
}
