package com.fcz.controller.dataCenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fcz.entity.EmergencyContact;
import com.fcz.service.dataCenterService.EmergencyContactService;

@Controller
@RequestMapping("EmergencyContact")
public class EmergencyContactController {
	@Autowired
	private EmergencyContactService emergencycontactService;
	
	@RequestMapping("getAll.json")
	@ResponseBody
	public List<EmergencyContact> getAllEmergencyContact() {
		return emergencycontactService.getAll();
		
	}
}
