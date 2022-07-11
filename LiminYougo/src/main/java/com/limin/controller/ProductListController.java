package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.ProductList;
import com.limin.service.ProductListService;
import com.limin.utils.UploadUtils;
import com.limin.utils.utilsDate;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/floor")
public class ProductListController {

    private static String TMP_PATH = "/images/floor";

    @Autowired
    ProductListService productService;

    @ApiOperation(value = "查询所有导航数据接口",notes = "查询所有导航数据")
    @RequestMapping("/queryFloor")
    public ApiResult<List<ProductList>> queryFloor() {

        List<ProductList> productList = productService.queryProductList();

        return ApiResult.ok(productList);
    }

    @RequestMapping("/createFloor")
    public ApiResult<HashMap<String, Object>> createFloor(@RequestBody Map<String,String> map) {

        ProductList product = new ProductList();
        product.setName(map.get(("name")));
        product.setImageSrc(map.get("imageSrc"));
        product.setImageUrl(map.get("imageUrl"));
        product.setCreateDate(utilsDate.getDate());

        productService.createProduct(product);

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "导航图片上传接口",notes = "导航图片上传")
    @RequestMapping("/uploadFloor")
    public ApiResult<HashMap<String, Object>> uploadFloor(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        return UploadUtils.upload(file,request,TMP_PATH);
    }
}
