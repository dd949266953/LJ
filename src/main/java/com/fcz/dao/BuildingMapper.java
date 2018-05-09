package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fcz.entity.Building;
@Mapper
public interface BuildingMapper {
    int deleteByPrimaryKey(Integer buildingid);

    int insert(Building record);

    int insertSelective(Building record);


    Building selectByPrimaryKey(Integer buildingid011231);


    int updateByPrimaryKeySelective(Building record);

    int updateByPrimaryKey(Building record);
    //获取所有楼宇信息
    List<Building> getAllBuilding(@Param("buildingName") String buildingName);
    //获取楼宇总数
    long getAllBuildingCount(@Param("buildingName") String buildingName);
    
    //根据小区ID查询所属楼宇
    List<Building> getAllBuildingByCommunityid(@Param("communityid") int communityid);
    
    //根据楼宇id查询单元数
    int getUnitById(@Param("buildingid") int buildingid);
}