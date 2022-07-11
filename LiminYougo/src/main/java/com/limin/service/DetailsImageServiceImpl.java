package com.limin.service;

import com.limin.mapper.DetailsImageMapper;
import com.limin.pojo.DetailsImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailsImageServiceImpl implements DetailsImageService {

    @Autowired
    DetailsImageMapper detailsImageMapper;

    @Override
    public List<DetailsImage> queryDetailsImageById(int id) {
        return detailsImageMapper.queryDetailsImageById(id);
    }
}
