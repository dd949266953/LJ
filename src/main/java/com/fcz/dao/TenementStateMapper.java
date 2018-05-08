package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fcz.entity.TenementState;

@Mapper
public interface TenementStateMapper {
    int deleteByPrimaryKey(Integer tenementStateId);

    int insert(TenementState record);

    int insertSelective(TenementState record);

    TenementState selectByPrimaryKey(Integer tenementStateId);

    int updateByPrimaryKeySelective(TenementState record);

    int updateByPrimaryKey(TenementState record);
    /**
     * 查询全部居住状态
     * @return
     */
    List<TenementState> getAllTenementState();
}