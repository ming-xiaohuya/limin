package com.limin.service;

import com.limin.pojo.Nav;

import java.util.List;

public interface NavService {

    List<Nav> queryNavList();

    int createNav(Nav nav);
}
