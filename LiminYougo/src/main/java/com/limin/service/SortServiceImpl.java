package com.limin.service;

import com.limin.mapper.SortMapper;
import com.limin.pojo.SortNav;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SortServiceImpl implements SortService {

    @Autowired
    SortMapper sortMapper;

    @Override
    public List<SortNav> querySortList() {
        return sortMapper.querySortList();
    }
}
