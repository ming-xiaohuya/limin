package com.limin.controller;

import com.limin.api.ApiResult;

import com.limin.pojo.User;
import com.limin.utils.utilsDate;
import com.limin.service.UserService;
import com.limin.utils.JWTUtil;
import com.limin.utils.utilsID;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Api("用户接口")
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @ApiOperation(value = "查询所有用户数据", notes = "查询所有用户数据")
    @RequestMapping("/userList")
    public ApiResult<List<User>> queryUser() {

        List<User> userList = userService.queryUserList();
        
        return ApiResult.ok(userList);
    }

    @ApiOperation(value = "登录功能", notes = "登录功能")
    @PostMapping("/login")
    public ApiResult<HashMap<String, Object>> login(@RequestBody Map<String,String> map) {

        String username = map.get("username");
        String password = map.get("password");
        User user = userService.queryUserName(username);
        if (user.getPassword().equals(password)) {
            HashMap<String, Object> hs = new HashMap<>();
            hs.put("token", JWTUtil.sign(username, password));
            return ApiResult.ok(hs);
        } else {
            throw new UnauthorizedException();
        }
    }

    @ApiOperation(value = "登录功能", notes = "登录功能")
    @GetMapping("/info")
    public ApiResult<HashMap<String, Object>> info(String token) {

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("status", true);
        hs.put("msg", "请求成功");

        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "退出接口", notes = "退出功能")
    @PostMapping("/logout")
    public ApiResult<HashMap<String, Object>> logout() {
        // 获取当前用户
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");
        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "创建用户接口", notes = "创建用户")
    @PostMapping("/createUser")
    public ApiResult<HashMap<String, Object>> createUser(@RequestBody Map<String,String> map) {

        User user = new User();
        user.setId(utilsID.getId());
        user.setUsername(map.get("username"));
        user.setPassword(map.get("password"));
        user.setUserRole(map.get("userrole"));
        user.setCreateDate(utilsDate.getDate());

        userService.createUser(user);

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");
        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "修改用户接口", notes = "修改用户")
    @PostMapping("/updateUser")
    public ApiResult<HashMap<String, Object>> updateUser(@RequestBody User user) {

        if (user != null) {
            userService.updateUser(user);
        }

        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");
        return ApiResult.ok(hs);
    }

    @ApiOperation(value = "根据ID删除用户名接口", notes = "根据ID删除用户")
    @PostMapping("/deleteUser")
    public ApiResult<HashMap<String, Object>> deleteUser(@RequestParam("id") String id) {

        userService.deleteUserById(id);
        HashMap<String, Object> hs = new HashMap<>();
        hs.put("msg", "请求成功");
        return ApiResult.ok(hs);
    }

}