package com.limin.mapper;

import com.limin.pojo.Swiper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SwiperMapper {

    List<Swiper> querySwiperList();

    int createSwiper(Swiper swiper);

    int updateSwiper(Swiper swiper);

    int deleteSwiperById(String id);
}
