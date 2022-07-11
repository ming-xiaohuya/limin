package com.limin.mapper;

import com.limin.pojo.Floor;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface FloorMapper {

    List<Floor> queryFloorList();

}
