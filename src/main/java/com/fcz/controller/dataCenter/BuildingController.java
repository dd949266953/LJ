package com.fcz.controller.dataCenter;



import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.fcz.entity.Building;
import com.fcz.service.dataCenterService.BuildingService;
import com.fcz.utils.BindTableUtil;



/**
 * 楼房控制器类
 * @author 夏目
 *
 */
@RequestMapping("building")
@Controller
public class BuildingController {
	
    @Autowired
	private BuildingService buildingService;
  
    
    @RequestMapping("building.html")
	public String getBuildingList() {
		return "dataCenter/list/buildingList";
	}   
    /**
     *获取所有楼房信息
     * @return
     */
    @RequestMapping(value="getAllBuilding.json")
    @ResponseBody
    public Object getAllBuilding(@RequestParam("buildingName") String buildingName) {
    	return BindTableUtil.bindTableUtil(0, buildingService.getAllBuildingCount(buildingName), buildingService.getAllBuilding(buildingName));
    		  	
    }
    /**
     * 根据id删除楼宇信息
     * @param id
     * @return
     */
    @RequestMapping(value="deleteBuilding.json")
    @ResponseBody
    public Object deleteBuilding(@RequestParam("buildingid") int buildingid) { 	
			try {
				return buildingService.deleteBuildingById(buildingid);
			} catch (Exception e) {
			  return -1;
			}
    } 
	/**
	 * 跳转添加楼宇页面
	 * @return
	 */
	@RequestMapping(value= {"addBuilding/{buildingId}","updateBuilding/{buildingId}"})
	public String getAddTenement(@PathVariable("buildingId") Integer buildingId,HttpServletRequest request) {
		request.setAttribute("buildingId", buildingId);
		return "dataCenter/add/addBuilding";

	}
	/**
	 * 添加楼宇
	 * @param building
	 * @return
	 */
	@RequestMapping("addBuilding.json")
	@ResponseBody
	public Object addBuilding(@Valid Building building) {	
		
	     return buildingService.addBuilding(building);
	}
	/**
	 * 更新楼宇
	 * @param building
	 * @return
	 */
	@RequestMapping("updateBuilding.json/{id}")
	@ResponseBody
	public Object updateBuilding(@Valid Building building,@PathVariable("id") int buildingId) {
		building.setBuildingid(buildingId);
		return buildingService.updateBuilding(building);
	}
	/**
	 * 根据id查询
	 * @param buildingId
	 * @return
	 */
	@RequestMapping("getBuildingById")
	@ResponseBody
	public Object getBuildingById(@RequestParam("buildingId") int buildingId) {
		return buildingService.getBuildingById(buildingId);
	}
	/**
	 * 根据小区ID查询所属楼宇
	 * @param communityid
	 * @return
	 */
	@RequestMapping(value="getAllBuildingByCommunityid.json")
    @ResponseBody
    public Object getAllBuildingByCommunityid(@RequestParam("communityid") String communityid) {	
    	return JSONArray.toJSONString(buildingService.getAllBuildingByCommunityid(Integer.parseInt(communityid)));		  	
    }
	/**
	 * 根据楼宇id查询单元数
	 * @return
	 */
	@RequestMapping("getUnitById.json")
	@ResponseBody
	public Object getUnitById(@RequestParam("buildingid") int buildingid ) {
		return buildingService.getUnitById(buildingid);
	}
	
}