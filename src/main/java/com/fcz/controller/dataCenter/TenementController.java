package com.fcz.controller.dataCenter;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fcz.entity.Result;
import com.fcz.entity.Tenement;
import com.fcz.service.dataCenterService.TenementService;
import com.fcz.utils.BindTableUtil;
import com.fcz.utils.ResultUtil;
import com.fcz.utils.uploadUtil;


/**
 * 控制住户器类
 * @author ADD
 *
 */
@RequestMapping("tenement")
@Controller
public class TenementController {
	private  final static Logger LOGGER = LoggerFactory.getLogger(CommunityController.class);
	
	@Autowired
	private TenementService tenementservice;
	
	
	@RequestMapping("tenementList.html")
	public String getTenementList() {
			return "dataCenter/list/tenmentList";
	}
	
	/**
	 * 获取所有住户信息
	 * @return
	 */
	@RequestMapping(value="getAllTenement.json")
	@ResponseBody
	public Object getAllTenement(@RequestParam(value="tenementKey")String tenementKey) {
		return BindTableUtil.bindTableUtil(0, 
										  1, 
										  tenementservice.getTenementBySelect(tenementKey,tenementKey,tenementKey,tenementKey));
	}
	/**
	 * 跳转 添加/修改 住户页面
	 * @return
	 */
	@RequestMapping(value= {"addTenement/{tenementid}","updateTenement/{tenementid}"})
	public String getAddTenement(@PathVariable("tenementid") Integer tenementid,HttpServletRequest request) {
		request.setAttribute("tenementid", tenementid);
		return "dataCenter/add/addTenement";

	}
	/**
	 * 跳转添加/修改 住户下一个页面
	 * @return
	 */
	@RequestMapping("addDetailTenement/{tenementid}")
	public String getAddDetailTenement(@PathVariable ("tenementid") Integer tenementid) {
			return "dataCenter/add/addDetailTenement";
	}

	
	/**
	 * 添加用户
	 * 
     */
	@ResponseBody
	@PostMapping(value = "addTenement")
	public void addTenement(@RequestParam(value="communityid",required=false)Integer communityid,
			                   @RequestParam(value="buildid",required=false)Integer buildid,
			                   @RequestParam(value="houseid",required=false)Integer houseid,
			                   @RequestParam(value="emergency",required=false)Integer emergency,
			                   @RequestParam(value="username",required=false)String username,
			                   @RequestParam(value="sex",required=false)String sex,
			                   @RequestParam(value="phone",required=false)String phone,
			                   @RequestParam(value="telephone",required=false)String telephone,
			                   @RequestParam(value="usercardno",required=false)String usercardno,
			                   @RequestParam(value="unit",required=false)String unit,
			                   @RequestParam(value="cometime",required=false)String cometime,
			                   @RequestParam(value="comecause",required=false)String comecause,
			                   HttpServletRequest request) throws Exception {
		
		Tenement tenement=new Tenement();
		tenement.setCommunityid(communityid);
		tenement.setBuildingid(buildid);
		tenement.setHouseid(houseid);
		tenement.setEmergencyId(emergency);
		tenement.setUsername(username);
		tenement.setSex(sex);
		tenement.setPhone(phone);
		tenement.setTelephone(telephone);
		tenement.setUsercardno(usercardno);
		tenement.setUnit(unit);
		tenement.setCometime(new SimpleDateFormat( "yyyy-MM-dd" ).parse(cometime));
		tenement.setComecause(comecause);
		HttpSession session = request.getSession();
		session.setAttribute("tenement", tenement);
	}
	/**
	 * 详细添加
	 * 
     */
	@ResponseBody
	@PostMapping(value = "saveTenement")
	public int saveTenement(@Valid Tenement tenement, BindingResult bindingResult, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		Tenement t=(Tenement)session.getAttribute("tenement");
		tenement.setCommunityid(t.getCommunityid());
		tenement.setBuildingid(t.getBuildingid());
		tenement.setHouseid(t.getHouseid());
		tenement.setEmergencyId(t.getEmergencyId());
		tenement.setUsername(t.getUsername());
		tenement.setSex(t.getSex());
		tenement.setPhone(t.getPhone());
		tenement.setTelephone(t.getTelephone());
		tenement.setUsercardno(t.getUsercardno());
		tenement.setUnit(t.getUnit());
		tenement.setCometime(t.getCometime());
		tenement.setComecause(t.getComecause());
		MultipartHttpServletRequest murequest = (MultipartHttpServletRequest) request;
		List<MultipartFile> userphoto = murequest.getFiles("userphoto");
		for (MultipartFile multipartFile : userphoto) {
			if (!multipartFile.isEmpty()) {
			  String fileName=uploadUtil.upload(murequest, multipartFile);
			  System.out.println(fileName);
			  tenement.setUserphoto(fileName);	
			}
		}
		List<MultipartFile> identityphoto=murequest.getFiles("identityphoto");
		for (MultipartFile multipartFile : identityphoto) {
			if (!multipartFile.isEmpty()) {
				 String fileName=uploadUtil.upload(murequest, multipartFile);
				 System.out.println(fileName);
				//设置实体类
				 tenement.setIdentityphoto(fileName);;		
			} else {
				LOGGER.info("文件为空");
			}
		}
		session.removeAttribute("tenement");
		return tenementservice.insertTenement(tenement);
	}
	/**
	 * 跳过详细添加
	 * 
     */
	@ResponseBody
	@RequestMapping(value = "passTenement")
	public int passTenement(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		Tenement tenement=(Tenement)session.getAttribute("tenement");
		session.removeAttribute("tenement");
		return tenementservice.insertTenement(tenement);
	}
	/**
	 * 根据用户ID查询用户基本信息
	 * @param tenementid
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("selecBasictByTenementId/{tenementid}")
	public Tenement selectByTenementId(@PathVariable("tenementid")String tenementid) throws Exception {
		return tenementservice.selectBasicByTenementId(Integer.parseInt(tenementid));
	}
	/**
	 * 根据用户ID查询用户其它信息
	 * @param tenementid
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("selectOtherByTenementId/{tenementid}")
	public Tenement selectOtherByTenementId(@PathVariable("tenementid")String tenementid) throws Exception {
		return tenementservice.selectOtherByTenementId(Integer.parseInt(tenementid));
	}
	/**
	 * 删除用户
	 */
	@RequestMapping(value="delTenement")
	@ResponseBody
	public Object delTenementById(HttpServletRequest request) {	
		return tenementservice.deleteByPrimaryKey(Integer.parseInt(request.getParameter("tenementid")));
	}
	/**
	 * 根据用户id修改用户基本信息
	 * @throws ParseException 
	 */
	@RequestMapping("updateBasicTenement/{tenementId}")
	@ResponseBody
	public Result updateBasicTenement(@PathVariable("tenementId")String tenementid,
									@RequestParam(value="communityid",required=false)Integer communityid,
						            @RequestParam(value="buildid",required=false)Integer buildid,
						            @RequestParam(value="houseid",required=false)Integer houseid,
						            @RequestParam(value="emergency",required=false)Integer emergency,
						            @RequestParam(value="username",required=false)String username,
						            @RequestParam(value="sex",required=false)String sex,
						            @RequestParam(value="phone",required=false)String phone,
						            @RequestParam(value="telephone",required=false)String telephone,
						            @RequestParam(value="usercardno",required=false)String usercardno,
						            @RequestParam(value="unit",required=false)String unit,
						            @RequestParam(value="cometime",required=false)String cometime,
						            @RequestParam(value="comecause",required=false)String comecause) throws ParseException {	
		Tenement tenement=new Tenement();
		tenement.setTenementid(Integer.parseInt(tenementid));
		tenement.setCommunityid(communityid);
		tenement.setBuildingid(buildid);
		tenement.setHouseid(houseid);
		tenement.setEmergencyId(emergency);
		tenement.setUsername(username);
		tenement.setSex(sex);
		tenement.setPhone(phone);
		tenement.setTelephone(telephone);
		tenement.setUsercardno(usercardno);
		tenement.setUnit(unit);
		tenement.setCometime(new SimpleDateFormat( "yyyy-MM-dd" ).parse(cometime));
		tenement.setComecause(comecause);
		return ResultUtil.success(tenementservice.updateBasicByTenementId(tenement));
	}
}
