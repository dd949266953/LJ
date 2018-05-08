package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fcz.entity.Community;
@Mapper
public interface CommunityMapper {
    int deleteByPrimaryKey(Integer communityId);

    int insert(Community record);

    int insertSelective(Community record);

    Community selectByPrimaryKey(Integer communityId);

    int updateByPrimaryKeySelective(Community record);

    int updateByPrimaryKey(Community record);
    
    /**
     * 查询数据（根据名字）
     */
    List<Community> getCommunityByName(@Param("communityName")String communityName);
    /**
     * 查询总条数（根据名字）
     */
    long getCommunityCountByName(@Param("communityName")String communityName);
    /**
     * 查询小区名字
     * @return
     */
    List<String> getAllCommunityName();
}