package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fcz.entity.CarPortState;
@Mapper
public interface CarPortStateMapper {
    int deleteByPrimaryKey(Integer carPortStateId);

    int insert(CarPortState record);

    int insertSelective(CarPortState record);

    CarPortState selectByPrimaryKey(Integer carPortStateId);

    int updateByPrimaryKeySelective(CarPortState record);

    int updateByPrimaryKey(CarPortState record);
    
    List<CarPortState> getAll();
}