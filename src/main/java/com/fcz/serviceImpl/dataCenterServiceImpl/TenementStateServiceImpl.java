package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.TenementStateMapper;
import com.fcz.entity.TenementState;
import com.fcz.service.dataCenterService.TenementStateService;

@Service
public class TenementStateServiceImpl implements TenementStateService {
	
	@Autowired
	private TenementStateMapper tenementstateMapper;
	
	public List<TenementState> getAllTenementState() {
		// TODO Auto-generated method stub
		return tenementstateMapper.getAllTenementState();
	}

}
