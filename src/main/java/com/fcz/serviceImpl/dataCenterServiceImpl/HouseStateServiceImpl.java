package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.HouseStateMapper;
import com.fcz.entity.HouseState;
import com.fcz.service.dataCenterService.HouseStateService;

/**
 * 房屋状态
 * @author 夏目
 *
 */
@Service
public class HouseStateServiceImpl implements HouseStateService{

	
	  @Autowired
	  private HouseStateMapper houseStateMapper;

	public List<HouseState> getAllHouseState() {
		return houseStateMapper.getAllHouseState();
	}
	  
	  
}
