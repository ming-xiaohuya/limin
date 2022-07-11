package com.limin.service;

import com.limin.mapper.SwiperMapper;
import com.limin.pojo.Swiper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SwiperServiceImpl implements SwiperService {

    @Autowired
    SwiperMapper swiperMapper;

    @Override
    public List<Swiper> querySwiperList() {
        return swiperMapper.querySwiperList();
    }

    @Override
    public int createSwiper(Swiper swiper) {
        return swiperMapper.createSwiper(swiper);
    }

    @Override
    public int updateSwiper(Swiper swiper) {
        return swiperMapper.updateSwiper(swiper);
    }

    @Override
    public int deleteSwiperById(String id) {
        return swiperMapper.deleteSwiperById(id);
    }
}
