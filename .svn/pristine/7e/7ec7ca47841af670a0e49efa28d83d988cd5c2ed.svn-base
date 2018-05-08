package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fcz.entity.HouseState;

@Mapper
public interface HouseStateMapper {
    int deleteByPrimaryKey(Integer houseStateid);

    int insert(HouseState record);

    int insertSelective(HouseState record);

    HouseState selectByPrimaryKey(Integer houseStateid);

    int updateByPrimaryKeySelective(HouseState record);

    int updateByPrimaryKey(HouseState record);
    
    List<HouseState> getAllHouseState();
}