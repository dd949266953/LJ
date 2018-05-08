package com.fcz.dao;

import com.fcz.entity.Carport;

public interface CarportMapper {
    int deleteByPrimaryKey(Integer carportid);

    int insert(Carport record);

    int insertSelective(Carport record);

    Carport selectByPrimaryKey(Integer carportid);

    int updateByPrimaryKeySelective(Carport record);

    int updateByPrimaryKey(Carport record);
}