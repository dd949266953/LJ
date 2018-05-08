package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.CarMapper;
import com.fcz.dao.CarPortStateMapper;
import com.fcz.entity.Car;
import com.fcz.entity.CarPortState;
import com.fcz.service.dataCenterService.CarStallService;
@Service
public  class CarStallServiceImpl implements CarStallService {
	@Autowired
	private  CarMapper carMapper;
	@Autowired
	private  CarPortStateMapper carPortStateMapper;
	
	public List<Car> getCarStallMessage(String carno) {
	
		return carMapper.getCarStallMessage(carno);
	}

	public int getCarCount() {	
		return carMapper.getCarCount();
	}

	public int deleteByPrimaryKey(Integer carid) {
		
		return carMapper.deleteByPrimaryKey(carid);
	}

	public List<Car> getCarStallMessageByCarid(int carid) {		
		return carMapper.getCarStallMessageByCarid(carid);
	}

	public List<CarPortState> getAll() {		
		return carPortStateMapper.getAll();
	}
   

}
