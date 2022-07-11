package com.limin.service;

import com.limin.mapper.SpikeMapper;
import com.limin.pojo.Spike;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpikeServiceImpl implements SpikeService {

    @Autowired
    SpikeMapper spikeMapper;

    @Override
    public List<Spike> querySpikeList() {
        return spikeMapper.querySpikeList();
    }
}
