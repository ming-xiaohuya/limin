package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.DetailsImage;
import com.limin.pojo.DetailsSwiper;
import com.limin.pojo.Products;
import com.limin.service.DetailsImageService;
import com.limin.service.DetailsSwiperService;
import com.limin.service.ProductsService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api("商品列表接口")
@RestController
@RequestMapping("/api")
public class ProductsController {

    @Autowired
    ProductsService productsService;

    @Autowired
    DetailsSwiperService detailsSwiperService;
    @Autowired
    DetailsImageService detailsImageService;

    @ApiOperation(value = "查询商品列表数据接口",notes = "查询商品列表数据")
    @RequestMapping("/queryProducts")
    public ApiResult<HashMap<String, Object>> queryProducts(Integer pagenum, Integer pagesize) {

        HashMap<String, Integer> map = new HashMap<>();
        map.put("startIndex",pagenum);
        map.put("pageSize",pagesize);
        List<Products> products = productsService.queryProducts(map);

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("message", products);
        hs.put("total",30);
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "根据id查询商品列表数据接口",notes = "根据id查询商品列表数据")
    @RequestMapping("/queryProductsById")
    public ApiResult<HashMap<String, Object>> queryProductsById(Integer cid, Integer pagenum, Integer pagesize) {

        HashMap<String, Integer> map = new HashMap<>();
        map.put("id",cid);
        map.put("startIndex",pagenum);
        map.put("pageSize",pagesize);
        List<Products> products = productsService.queryProductsById(map);

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("message", products);
        hs.put("total",30);
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "查询商品列表数据接口",notes = "查询商品列表数据")
    @RequestMapping("/query")
    public ApiResult<HashMap<String, Object>> query(String query) {

        List<Products> productsList = productsService.query(query);
        HashMap<String, Object> hs = new HashMap<>();
        hs.put("message", productsList);
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "查询商品详情数据接口",notes = "查询商品详情数据")
    @RequestMapping("/queryProductsId")
    public ApiResult<HashMap<String, Object>> queryProductsId(int pid) {

        Products products = productsService.queryProductsId(pid);

        List<DetailsSwiper> detailsSwiper = detailsSwiperService.queryDetailsSwiperById(pid);

        List<DetailsImage> detailsImage = detailsImageService.queryDetailsImageById(pid);


        HashMap<String, Object> hs = new HashMap<>();

        hs.put("products",products);
        hs.put("detailsSwiper",detailsSwiper);
        hs.put("detailsImage",detailsImage);
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }
}
