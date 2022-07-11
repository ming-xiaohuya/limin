package com.limin.mapper;

import com.limin.pojo.DetailsImage;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface DetailsImageMapper {

    List<DetailsImage> queryDetailsImageById(int id);
}
