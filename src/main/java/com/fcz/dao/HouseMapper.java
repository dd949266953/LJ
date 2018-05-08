package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fcz.entity.House;
@Mapper
public interface HouseMapper {
    int deleteByPrimaryKey(Integer houseid);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(Integer houseid);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);
    
    List<House> getAllHouse(@Param("houseno") String houseno);
    
    long getHouseCount(@Param("houseno") String houseno);
    /**
     * 根据楼宇查询所有单元
     * @param buildingid
     * @return
     */
    List<House> getHouseUnitByBuilding(@Param("buildingId") int buildingId);
    
    /**
     * 根据单元查询所有房屋
     * @param buildingid
     * @return
     */
    List<House> getHouseByUnit(@Param("houseunit") int houseUnit);
}