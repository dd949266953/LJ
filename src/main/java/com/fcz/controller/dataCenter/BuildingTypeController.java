package com.fcz.controller.dataCenter;
/**
 * 楼宇类型
 * @author 夏目
 *
 */



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fcz.service.dataCenterService.BuildingTypeService;
@Controller
@RequestMapping("buildingType")
public class BuildingTypeController {
      
	@Autowired
	private BuildingTypeService buildingTypeService;
	/**
	 * 获取所有楼宇类型
	 * @return
	 */
	@RequestMapping("getAllBuildingType.json")
	@ResponseBody
	public  Object getAllType() {
		return buildingTypeService.getALLBuildingType();
	}
}
