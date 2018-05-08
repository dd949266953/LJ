package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.BuildingMapper;
import com.fcz.entity.Building;
import com.fcz.service.dataCenterService.BuildingService;
@Service
public class BuildingServiceImpl implements BuildingService{
     
	@Autowired
	private BuildingMapper buildingMapper;
	
	public List<Building> getAllBuilding(String buildingName) {
		
		return buildingMapper.getAllBuilding(buildingName);
	}

	public long getAllBuildingCount(String buildingName) {
		return buildingMapper.getAllBuildingCount(buildingName);
	}

	public int deleteBuildingById(int buildingId) {
		return buildingMapper.deleteByPrimaryKey(buildingId);
	}

	public int addBuilding(Building building) {
		return buildingMapper.insertSelective(building);
	}

	public int updateBuilding(Building building) {
		return buildingMapper.updateByPrimaryKeySelective(building);
	}

	public Building getBuildingById(int buildingId) {
		return buildingMapper.selectByPrimaryKey(buildingId);
	}

	public List<Building> getAllBuildingByCommunityid(int communityid) {
		// TODO Auto-generated method stub
		return buildingMapper.getAllBuildingByCommunityid(communityid);
	}

	public int getUnitById(int buildingid) {
		return buildingMapper.getUnitById(buildingid);
	}

}
