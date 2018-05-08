package com.fcz.controller.dataCenter;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fcz.entity.House;
import com.fcz.service.dataCenterService.HouseService;
import com.fcz.utils.BindTableUtil;


/**
 * 房屋
 * @author 夏目
 *
 */
@Controller
@RequestMapping("house")
public class HouseController {
     
	@Autowired
	private HouseService HouseService;
	
	@RequestMapping("doHouse.html")
	public String doHouseList() {
		return "dataCenter/list/houseList" ;
	}
	/**
	 * 获取所有房屋信息
	 * @return
	 */
	@RequestMapping("getAllHouse.json")
	@ResponseBody
	public Object getAllHouse(@RequestParam("houseno") String houseno) {
		return BindTableUtil.bindTableUtil(0, HouseService.getAllCount(houseno), HouseService.getAllHouse(houseno));
	}
	/**
	 * 根据楼宇id获取所有房屋单元
	 * @param buildingId
	 * @return
	 */
	@RequestMapping("getHouseByBuilding.json")
	@ResponseBody
	public Object getHouseUnitByBuilding(@RequestParam(value="buildingId") int buildingId) {
		return HouseService.getHouseUnitByBuilding(buildingId);
	}
	/**
	 * 根据房屋单元查询所有房屋
	 * @param buildingId
	 * @return
	 */
	@RequestMapping("getHouseNnit.json")
	@ResponseBody
	public Object getHouseByUnit(@RequestParam(value="houseUnit") int houseUnit) {
		return HouseService.getHouseByUnit(houseUnit);
	}
	/**
	 * 根据id删除房屋信息
	 * @return
	 */
	@RequestMapping("deleteHouseById.json")
	@ResponseBody
	public Object deleteHouseById(@RequestParam("houseId") int houseId) {
		try {
			return HouseService.deleteHouseById(houseId);
		} catch (Exception e) {
			return -1;
		}
	}
	/**
	 * 跳转 添加更新页面
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("doAorU/{id}")
	public String doAddOrUpdate(@PathVariable("id") int id,HttpServletRequest request) {
		request.setAttribute("id", id);
		return "dataCenter/add/addHouse";
	}
	/**
	 * 保存对象
	 * @return
	 */
	@RequestMapping("savaHouse")
	@ResponseBody
	public String dohuose(@RequestParam("communityId")int communityId,@RequestParam("buildingid")int buildingid,
			@RequestParam("houseunit")String houseunit,@RequestParam("floor")int floor,@RequestParam("houseno")String houseno,
			@RequestParam("privatearea")Double privatearea,@RequestParam("publicarea")Double publicarea,@RequestParam("houseStateid")int houseStateid,HttpSession session) {
		House house=new House();
		house.setCommunityId(communityId);
		house.setBuildingid(buildingid);
		house.setHouseunit(houseunit);
		house.setFloor(floor);
		house.setHouseno(houseno);
		house.setPrivatearea(privatearea);
		house.setPublicarea(publicarea);
		house.setHouseStateid(houseStateid);
		session.setAttribute("house", house);
		return "1" ;
	}
	/**
	 * 跳转到下一步
	 * @return
	 */
	@RequestMapping("doAddNext")
	public String doAddNext() {
		return "dataCenter/add/addHouseNext" ;
	}
	
	
	/**
	 * 添加房屋信息
	 * @param house
	 * @return
	 */
	@RequestMapping("addHouse.json")
	@ResponseBody
	public Object addHouse(@RequestParam("house")House house) {
		return HouseService.addHouse(house);
	}
	
}
