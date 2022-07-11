package com.limin.service;

import com.limin.mapper.UserMapper;
import com.limin.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserMapperImpl implements UserService{

    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> queryUserList() {
        return userMapper.queryUserList();
    }

    @Override
    public User queryUserName(String name) {
        return userMapper.queryUserName(name);
    }

    @Override
    public int createUser(User user) {
        return userMapper.createUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int deleteUserById(String id) {
        return userMapper.deleteUserById(id);
    }
}
