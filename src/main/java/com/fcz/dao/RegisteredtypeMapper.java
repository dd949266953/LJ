package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fcz.entity.Registeredtype;

@Mapper
public interface RegisteredtypeMapper {
    int deleteByPrimaryKey(Integer registeredid);

    int insert(Registeredtype record);

    int insertSelective(Registeredtype record);

    Registeredtype selectByPrimaryKey(Integer registeredid);

    int updateByPrimaryKeySelective(Registeredtype record);

    int updateByPrimaryKey(Registeredtype record);
    /**
     * 查询全部户口类型
     * @return
     */
    List<Registeredtype>getAll();
}