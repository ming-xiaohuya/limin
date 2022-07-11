package com.limin.utils;

import com.limin.api.ApiResult;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;

/**
 *
 * @author : 小冥
 * @date : 00:25 2022/5/21
 * */

public class UploadUtils {

    public static ApiResult<HashMap<String, Object>> upload(MultipartFile file, HttpServletRequest request, String TMP_PATH) {

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
