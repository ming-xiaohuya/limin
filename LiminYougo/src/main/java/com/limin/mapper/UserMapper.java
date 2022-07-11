package com.limin.mapper;

import com.limin.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository
public interface UserMapper {

    List<User> queryUserList();

    User queryUserName(String name);

    int createUser(User user);

    int updateUser(User user);

    int deleteUserById(String id);

}
