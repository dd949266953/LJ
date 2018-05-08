package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.RegisteredtypeMapper;
import com.fcz.entity.Registeredtype;
import com.fcz.service.dataCenterService.RegisteredtypeService;

@Service
public class RegisteredtypeServiceImpl implements RegisteredtypeService {
	@Autowired
	private RegisteredtypeMapper registeredtypeMapper;
	public List<Registeredtype> getAll() {
		// TODO Auto-generated method stub
		return registeredtypeMapper.getAll();
	}

}
