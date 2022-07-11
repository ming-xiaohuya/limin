package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.Nav;
import com.limin.pojo.Swiper;
import com.limin.service.NavService;
import com.limin.utils.UploadUtils;
import com.limin.utils.utilsDate;
import io.swagger.annotations.Api;
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

@Api("导航栏接口")
@RestController
@RequestMapping("/nav")
public class NavController {

    private static String TMP_PATH = "/images/nav";

    @Autowired
    NavService navService;

    @ApiOperation(value = "查询所有导航数据接口",notes = "查询所有导航数据")
    @RequestMapping("/queryNav")
    public ApiResult<List<Nav>> queryNav() {

        List<Nav> navList = navService.queryNavList();

        return ApiResult.ok(navList);
    }

    @ApiOperation(value = "创建导航接口",notes = "创建导航")
    @RequestMapping("/createNav")
    public ApiResult<HashMap<String, Object>> createNav(@RequestBody Map<String,String> map) {
        System.out.println("导航数据" + map);

        Nav nav = new Nav();

        nav.setTitle(map.get("title"));
        nav.setNavSrc(map.get("navSrc"));
        nav.setNavUrl(map.get("navUrl"));
        nav.setCreateDate(utilsDate.getDate());

        navService.createNav(nav);

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "导航图片上传接口",notes = "导航图片上传")
    @RequestMapping("/uploadNav")
    public ApiResult<HashMap<String, Object>> uploadNav(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        return UploadUtils.upload(file,request,TMP_PATH);
    }
}
