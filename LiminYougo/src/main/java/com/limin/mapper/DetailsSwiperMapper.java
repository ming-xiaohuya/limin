package com.limin.mapper;

import com.limin.pojo.DetailsSwiper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface DetailsSwiperMapper {

    List<DetailsSwiper> queryDetailsSwiperById(int id);
}
