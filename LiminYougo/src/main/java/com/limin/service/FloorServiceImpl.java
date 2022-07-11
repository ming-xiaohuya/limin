package com.limin.service;

import com.limin.mapper.FloorMapper;
import com.limin.pojo.Floor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FloorServiceImpl implements FloorService {

    @Autowired
    FloorMapper floorMapper;

    @Override
    public List<Floor> queryFloorList() {
        return floorMapper.queryFloorList();
    }

}
