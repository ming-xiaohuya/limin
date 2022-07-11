package com.limin.service;

import com.limin.pojo.User;

import java.util.List;

public interface UserService {

    List<User> queryUserList();

    User queryUserName(String name);

    int createUser(User user);

    int updateUser(User user);

    int deleteUserById(String id);
}
