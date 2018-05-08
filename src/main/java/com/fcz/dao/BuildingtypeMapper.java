package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fcz.entity.Buildingtype;
@Mapper
public interface BuildingtypeMapper {
    int deleteByPrimaryKey(Integer buildingtypeid);

    int insert(Buildingtype record);

    int insertSelective(Buildingtype record);

    Buildingtype selectByPrimaryKey(Integer buildingtypeid);

    int updateByPrimaryKeySelective(Buildingtype record);

    int updateByPrimaryKey(Buildingtype record);
    
    List<Buildingtype> getAllBuildingType(); 
}