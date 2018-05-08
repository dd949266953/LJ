package com.fcz.service.dataCenterService;
/**
 * 房屋
 * @author 夏目
 *
 */

import java.util.List;


import com.fcz.entity.House;

public interface HouseService {
    /**
     * 获取所有房屋信息
     * @return
     */
	List<House> getAllHouse(String houseno);
	/**
	 * 获取房屋数量
	 * @return
	 */
	long getAllCount(String houseno);
	/**
	 * 根据楼宇id查询房屋单元
	 * @return
	 */
	List<House> getHouseUnitByBuilding(int buildingId);
	/**
     * 根据单元查询所有房屋
     * @param buildingid
     * @return
     */
    List<House> getHouseByUnit(int houseUnit);
	/**
	 * 根据id删除
	 * @return
	 */
	int deleteHouseById(int houseid) throws Exception;
	/**
	 * 添加房屋
	 * @return
	 */
	int addHouse(House house);
}
