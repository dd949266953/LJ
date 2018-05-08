package com.fcz.service.dataCenterService;
/**
 * 小区业务逻辑
 * @author 夏目
 *
 */

import java.util.List;

import com.fcz.entity.Community;

public interface CommunityService {
    /**
     * 获取小区信息
     * @param communityName
     * @return
     */
	List<Community> getAllCommunityByName(String communityName);
	/**
	 * 获取小区总数量
	 * @param communityName
	 * @return
	 */
	long getCommunityCount(String communityName);
	
	/**
	 * 添加小区
	 * @param community
	 * @return
	 */
	int addCommunity(Community community);
	/**
	 * 根据id查询小区信息
	 * @param id
	 * @return
	 */
	Community getCommunityById(int id);
	/**
	 * 修改小区信息
	 * @param community
	 * @return
	 */
	int updateCommunity(Community community);
	/**
	 * 根据id删除
	 * @param id
	 * @return
	 */
	int deleteCommunityById(int id);
	/**
	 * 查询小区名字
	 * @return
	 */
	List<String> getAllCommunityName();
}
