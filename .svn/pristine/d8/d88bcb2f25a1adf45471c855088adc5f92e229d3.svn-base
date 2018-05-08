package com.fcz.controller.dataCenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fcz.entity.Registeredtype;
import com.fcz.service.dataCenterService.RegisteredtypeService;

@RestController
@RequestMapping("Registeredtype")
public class RegisteredtypeController {
	@Autowired
	private RegisteredtypeService registeredtypeService;
	
	/**
	 * 查询所有户口类型
	 * @return
	 */
	@PostMapping("getAllRegisteredType")
	public List<Registeredtype> getAllRegisteredType() {
		return registeredtypeService.getAll();
	}
}
