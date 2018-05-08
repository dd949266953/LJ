package com.fcz.service.dataCenterService;
/**
 * 楼宇业务逻辑
 * @author 夏目
 *
 */

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fcz.entity.Building;

public interface BuildingService {
    /**
     *获取所有楼宇
     * @param buildingName
     * @return
     */
	List<Building> getAllBuilding(String buildingName);
	/**
	 * 获取楼宇数量
	 * @param buildingName
	 * @return
	 */
	long getAllBuildingCount(String buildingName);
	/**
	 * 根据id删除
	 * @return
	 */
	int deleteBuildingById(int buildingId) throws Exception;
	/**
	 * 添加楼宇
	 * @return
	 */
	int addBuilding(Building building);
	/**
	 * 更新楼宇
	 * @return
	 */
	int updateBuilding(Building building);
	/**
	 * 根据id查询楼宇
	 * @param buildingId
	 * @return
	 */
	Building getBuildingById(int buildingId);
	/**
	 * 根据小区ID查询所属楼宇
	 * @param communityid
	 * @return
	 */
	List<Building> getAllBuildingByCommunityid(@Param("communityid") int communityid);
	/**
	 * 根据楼宇id查询单元数
	 * @param buildingid
	 * @return
	 */
	int getUnitById(int buildingid);
}
