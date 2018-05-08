package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.TenementMapper;
import com.fcz.entity.Tenement;
import com.fcz.service.dataCenterService.TenementService;

@Service
public class TenementServiceImpl implements TenementService{
	@Autowired
	private TenementMapper tenementMapper;

	public List<Tenement> getTenementBySelect(String username, String houseno, String phone, String usercardno) {
		// TODO Auto-generated method stub
		return tenementMapper.getTenementBySelect(username, houseno, phone, usercardno);
	}

	public long getTenementCountBySelect(String username, String houseno, String phone, String usercardno) {
		// TODO Auto-generated method stub
		return tenementMapper.getTenementCountBySelect(username, houseno, phone, usercardno);
	}

	public int insertTenement(Tenement tenement) {
		// TODO Auto-generated method stub
		return tenementMapper.insertTenement(tenement);
	}

	public int deleteByPrimaryKey(Integer tenementid) {
		// TODO Auto-generated method stub
		return tenementMapper.deleteByPrimaryKey(tenementid);
	}

	public Tenement selectByPrimaryKey(Integer tenementid) {
		// TODO Auto-generated method stub
		return tenementMapper.selectByPrimaryKey(tenementid);
	}

	public Tenement selectBasicByTenementId(Integer tenementid) {
		// TODO Auto-generated method stub
		return tenementMapper.selectBasicByTenementId(tenementid);
	}

	public int updateBasicByTenementId(Tenement tenement) {
		// TODO Auto-generated method stub
		return tenementMapper.updateBasicByTenementId(tenement);
	}

	public Tenement selectOtherByTenementId(Integer tenementid) {
		// TODO Auto-generated method stub
		return tenementMapper.selectOtherByTenementId(tenementid);
	}
}
