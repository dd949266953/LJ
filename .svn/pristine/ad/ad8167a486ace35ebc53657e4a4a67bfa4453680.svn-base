package com.fcz.service.dataCenterService;

import java.util.List;



import com.fcz.entity.Tenement;

/**
 * 住户逻辑接口
 * @author dell
 *
 */
public interface TenementService {
	/**
     * 根据 用户名  房号 电话 业主卡号 查询住户
     * @param username
     * @param houseno
     * @param phone
     * @param usercardno
     * @return
     */
    List<Tenement> getTenementBySelect(String username,String houseno,String phone,String usercardno);
	
    /**
     * 根据 用户名  房号 电话 业主卡号 查询住户总数
     * @param username
     * @param houseno
     * @param phone
     * @param usercardno
     * @return
     */
    long getTenementCountBySelect(String username,String houseno,String phone,String usercardno);
    /**
     * 添加用户
     * @param tenement
     * @return
     */
    int insertTenement(Tenement tenement);
    
    /**
	 * 根据id删除用户
	 * @param tenementid
	 * @return
	 */
    int deleteByPrimaryKey(Integer tenementid);
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
    
    /**
     * 根据用户id修改用户基本信息
     * @param tenementid
     * @return
     */
    int updateBasicByTenementId(Tenement tenement);
}
