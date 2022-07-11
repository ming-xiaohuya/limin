package com.limin.controller;

import com.limin.api.ApiResult;
import com.limin.pojo.User;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;

@RestController
@RequestMapping("/api")
public class ImageController {

    private static String TMP_PATH = "/images";

    @ApiOperation(value = "图片上传接口", notes = "图片上传")
    @PostMapping("/images")
    public ApiResult<HashMap<String, Object>> updateUser(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        System.out.println("wenjian" + file);
        HashMap<String, Object> map = new HashMap<>();

        try {
            // 上传路径保存设置
            String path = request.getServletContext().getRealPath(TMP_PATH);
            // 获取文件名：file.getOriginalFilename()
            String uploadFileName = file.getOriginalFilename();
            File image = new File(path, uploadFileName);

            if(!image.getParentFile().exists()) {
                image.getParentFile().mkdirs();
            }
            file.transferTo(image);
            map.put("success", 1);
            map.put("message", "上传成功！");
            // request.getServerName() : localhost
            // request.getServerPort() : 8081 端口
            map.put("url","http://" + request.getServerName() + ":" + request.getServerPort() + TMP_PATH + "/" + uploadFileName);
        } catch (Exception e) {
            map.put("success", 0);
            map.put("message", "上传失败！");
            e.printStackTrace();
        }


        return ApiResult.ok(map);
    }
}
