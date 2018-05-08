package com.fcz.dao;

import java.util.*;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fcz.entity.Car;
@Mapper
public interface CarMapper {
    int deleteByPrimaryKey(Integer carid);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Integer carid);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);
    /**
     * 获取车位信息
     * @return
     */
    List<Car> getCarStallMessage(@Param("carno") String carno);
    /**
     * 数量
     * @return
     */
    int getCarCount();
    /**
     * 根据carid查询
     * @return
     */
    List<Car> getCarStallMessageByCarid(int carid);
}