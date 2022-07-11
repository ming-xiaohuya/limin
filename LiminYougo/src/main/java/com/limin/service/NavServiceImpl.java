package com.limin.service;

import com.limin.mapper.NavMapper;
import com.limin.pojo.Nav;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NavServiceImpl implements NavService {

    @Autowired
    NavMapper navMapper;

    @Override
    public List<Nav> queryNavList() {
        return navMapper.queryNavList();
    }

    @Override
    public int createNav(Nav nav) {
        return navMapper.createNav(nav);
    }
}
