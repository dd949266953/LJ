package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.HouseMapper;
import com.fcz.entity.House;
import com.fcz.service.dataCenterService.HouseService;
@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	private HouseMapper houseMapper;
	
	public List<House> getAllHouse(String houseno) {
		return houseMapper.getAllHouse(houseno);
	}

	public long getAllCount(String houseno) {
		return houseMapper.getHouseCount(houseno);
	}

	public List<House> getHouseUnitByBuilding(int buildingId) {
		return houseMapper.getHouseUnitByBuilding(buildingId);
	}

	public int deleteHouseById(int houseid) {
		return houseMapper.deleteByPrimaryKey(houseid);
	}

	public int addHouse(House house) {
		return houseMapper.insertSelective(house);
	}

	public List<House> getHouseByUnit(int houseUnit) {
		// TODO Auto-generated method stub
		return houseMapper.getHouseByUnit(houseUnit);
	}


}
