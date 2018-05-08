package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fcz.entity.EmergencyContact;

@Mapper
public interface EmergencyContactMapper {
    int deleteByPrimaryKey(Integer emergencyId);

    int insert(EmergencyContact record);

    int insertSelective(EmergencyContact record);

    EmergencyContact selectByPrimaryKey(Integer emergencyId);

    int updateByPrimaryKeySelective(EmergencyContact record);

    int updateByPrimaryKey(EmergencyContact record);
    
    /**
     * 查询全部关系
     * @return
     */
    List<EmergencyContact> getAll();
 }