package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.EmergencyContactMapper;
import com.fcz.entity.EmergencyContact;
import com.fcz.service.dataCenterService.EmergencyContactService;

@Service
public class EmergencyContactServiceImpl implements EmergencyContactService{
	
	@Autowired
	private EmergencyContactMapper emergencyContactMapper;
	
	public List<EmergencyContact> getAll() {
		// TODO Auto-generated method stub
		return emergencyContactMapper.getAll();
	}
	
}
