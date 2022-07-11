package com.limin.mapper;

import com.limin.pojo.Nav;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface NavMapper {

    List<Nav> queryNavList();

    int createNav(Nav nav);
}
