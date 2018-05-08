package com.fcz.controller.dataCenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fcz.entity.TenementState;
import com.fcz.service.dataCenterService.TenementStateService;

@RestController
@RequestMapping("tenementState")
public class TenementStateController {
	@Autowired
	private TenementStateService tenementstateservice;
	
	/**
	 * 查询所有居住类型
	 * @return
	 */
	@PostMapping("getAllTenementState")
	public List<TenementState> getAllTenementState() {
		return tenementstateservice.getAllTenementState();
	}
}
