package com.fcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fcz.entity.Tenement;
@Mapper
public interface TenementMapper {
	/**
	 * 根据id删除用户
	 * @param tenementid
	 * @return
	 */
    int deleteByPrimaryKey(Integer tenementid);

    int insert(Tenement record);
    /**
     * 添加用户
     * @param tenement
     * @return
     */
    int insertTenement(Tenement tenement);
    /**
     * 根据用户id查询用户信息
     * @param tenementid
     * @return
     */
    Tenement selectByPrimaryKey(Integer tenementid);
    /**
     * 根据用户id查询用户基本信息
     * @param tenementid
     * @return
     */
    Tenement selectBasicByTenementId(Integer tenementid);
    
    /**
     * 根据用户id查询用户其它信息
     * @param tenementid
     * @return
     */
    Tenement selectOtherByTenementId(Integer tenementid);
    
    int updateByPrimaryKeySelective(Tenement record);

    int updateByPrimaryKey(Tenement record);
    
    /**
     * 根据 用户名  房号 电话 业主卡号 查询住户
     * @param username
     * @param houseno
     * @param phone
     * @param usercardno
     * @return
     */
    List<Tenement> getTenementBySelect(@Param("username") String username,
    								   @Param("houseno") String houseno,
    								   @Param("phone") String phone,
    								   @Param("usercardno") String usercardno);
    /**
     * 根据 用户名  房号 电话 业主卡号 查询住户总数
     * @param username
     * @param houseno
     * @param phone
     * @param usercardno
     * @return
     */
    long getTenementCountBySelect(@Param("username") String username,
    					          @Param("houseno") String houseno,
			   					  @Param("phone") String phone,
			   					  @Param("usercardno") String usercardno);
    
    /**
     * 根据用户id修改用户基本信息
     * @param tenementid
     * @return
     */
    int updateBasicByTenementId(Tenement tenement);
    
    
    
}