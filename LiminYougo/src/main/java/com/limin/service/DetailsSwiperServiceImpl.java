package com.limin.service;

import com.limin.mapper.DetailsSwiperMapper;
import com.limin.pojo.DetailsSwiper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailsSwiperServiceImpl implements DetailsSwiperService {

    @Autowired
    DetailsSwiperMapper detailsSwiperMapper;

    @Override
    public List<DetailsSwiper> queryDetailsSwiperById(int id) {
        return detailsSwiperMapper.queryDetailsSwiperById(id);
    }
}
