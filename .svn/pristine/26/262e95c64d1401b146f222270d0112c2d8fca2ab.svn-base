package com.fcz.controller.dataCenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fcz.service.dataCenterService.HouseStateService;

/**
 * 房屋状态
 * @author 夏目
 *
 */
@RequestMapping("houseState")
@Controller
public class HouseStateController {

	 @Autowired
	 private HouseStateService houseStateService;
	 /**
	  * 获取所有状态
	  * @return
	  */
	 @RequestMapping("getAllHouseState.json")
	 @ResponseBody
	 public Object getAllHouseState() {
		 return houseStateService.getAllHouseState();
	 }
}
