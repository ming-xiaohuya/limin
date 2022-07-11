package com.limin.mapper;

import com.limin.pojo.Spike;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SpikeMapper {

    List<Spike> querySpikeList();
}
