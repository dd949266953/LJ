package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.BuildingtypeMapper;
import com.fcz.entity.Buildingtype;
import com.fcz.service.dataCenterService.BuildingTypeService;

/**
 * 楼宇类型实现类
 * @author 夏目
 *
 */
@Service
public class BuildingTypeServiceImpl implements BuildingTypeService{

	@Autowired
	private BuildingtypeMapper buildingtypeMapper;
	
	public List<Buildingtype> getALLBuildingType() {
		return buildingtypeMapper.getAllBuildingType();
	}
     
}
