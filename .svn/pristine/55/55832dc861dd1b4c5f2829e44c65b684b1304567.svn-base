package com.fcz.controller.dataCenter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fcz.entity.Car;
import com.fcz.entity.CarPortState;
import com.fcz.entity.Community;
import com.fcz.service.dataCenterService.CarStallService;
import com.fcz.service.dataCenterService.CommunityService;
import com.fcz.utils.BindTableUtil;
@RequestMapping("CarStall")
@Controller
public class CarStallController {
	@Autowired
	private CarStallService carStallService;
	@Autowired
	private CommunityService communityservice;
	
	@RequestMapping(value="stall.html")
	public String getStallList() {	
		return "dataCenter/list/carStall";
	}
	/**
	 * 查询车位信息
	 * @param carNo
	 * @return
	 */
	@RequestMapping(value="stallList.json")
	@ResponseBody
	public Object CarStallMessage(@RequestParam(value="carno") String carno) {
		return BindTableUtil.bindTableUtil(0,carStallService.getCarCount(),carStallService.getCarStallMessage(carno));
	}
	
	@RequestMapping(value="deleteCarStall.json")
	@ResponseBody
	public Object deleteCarStall(@RequestParam("carid") int carid) {		
		return carStallService.deleteByPrimaryKey(carid);
	}
	/**
	 * 回显数据
	 * @param request
	 * @return
	 */
	@RequestMapping(value="selectStallByCarid")
	public String selectByCarid(HttpServletRequest request){
		String carid=request.getParameter("carid");		
		String communityName=request.getParameter("communityName");//不用
		List<Car> stallList=carStallService.getCarStallMessageByCarid(Integer.parseInt(carid));
		List<Community> communityList=communityservice.getAllCommunityByName("");
		List<CarPortState> carPortStateList=carStallService.getAll();
		request.setAttribute("stallList", stallList);
		request.setAttribute("communityList", communityList);	
		request.setAttribute("carPortStateList", carPortStateList);	
		return "dataCenter/add/updateStall";
	}
	/**
	 * 修还
	 * @return
	 */
	@RequestMapping(value="updateStall.html")
	public String updateStall(HttpServletRequest reqeust) {
		String carid=reqeust.getParameter("carid");
		
		return "dataCenter/add/updateStall";
	}
}
