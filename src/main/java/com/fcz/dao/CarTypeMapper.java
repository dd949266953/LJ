package com.fcz.dao;

import com.fcz.entity.CarType;

public interface CarTypeMapper {
    int deleteByPrimaryKey(Integer carTypeid);

    int insert(CarType record);

    int insertSelective(CarType record);

    CarType selectByPrimaryKey(Integer carTypeid);

    int updateByPrimaryKeySelective(CarType record);

    int updateByPrimaryKey(CarType record);
}