package com.limin.service;

import com.limin.pojo.Swiper;

import java.util.List;

public interface SwiperService {

    List<Swiper> querySwiperList();

    int createSwiper(Swiper swiper);

    int updateSwiper(Swiper swiper);

    int deleteSwiperById(String id);
}
