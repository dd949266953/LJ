package com.fcz.controller.dataCenter;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
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

import com.fcz.entity.Community;
import com.fcz.service.dataCenterService.CommunityService;
import com.fcz.utils.BindTableUtil;
import com.fcz.utils.uploadUtil;

/**
 * 小区
 * @author 夏目
 *
 */
@RequestMapping("Community")
@Controller
public class CommunityController {
	private  final static Logger LOGGER = LoggerFactory.getLogger(CommunityController.class);
	@Autowired
	private CommunityService communityservice;
	
    /**
     * 
     * 跳转
     * @return
     */
	@RequestMapping("doCommunityList.html")
	public String doCommunity() {
		return "dataCenter/list/communityList";
	}
	/**
	 * 查询小区信息
	 * @param communityName
	 * @return
	 */
	@RequestMapping("getAllCommunity.json")
	@ResponseBody
	public Object getAllCommunity(@RequestParam("communityName") String communityName) {
		return BindTableUtil.bindTableUtil(0, communityservice.getCommunityCount(communityName), communityservice.getAllCommunityByName(communityName));
	}
	
	
	
	/**
	 * 添加小区/修改小区
	 * id==-1 添加小区
	 * @return
	 */
	@RequestMapping("addCommunity/{id}")
	public String getAddCommunity(@PathVariable("id") int id) {
		return "dataCenter/add/addCommunity";
	}

	/**
	 * 添加小区
	 * 
	 * @param community
	 * @param result
	 * @param picFile
	 * @param request
	 * @return
	 * @throws Exception
     */
	@ResponseBody
	@PostMapping(value = "doadd.json")
	public Object addCommunity(@Valid Community community, BindingResult bindingResult, HttpServletRequest request)
			throws Exception {
		
		MultipartHttpServletRequest murequest = (MultipartHttpServletRequest) request;
		List<MultipartFile> communityImage = murequest.getFiles("communityImage");
		for (MultipartFile multipartFile : communityImage) {
			if (!multipartFile.isEmpty()) {
			  String fileName=uploadUtil.upload(murequest, multipartFile);
				community.setCommunityImage(fileName);		
			}
		}
		List<MultipartFile> communityLogo=murequest.getFiles("communityLogo");
		for (MultipartFile multipartFile : communityLogo) {
			if (!multipartFile.isEmpty()) {
				 String fileName=uploadUtil.upload(murequest, multipartFile);
				//设置实体类
				community.setCommunityLogo(fileName);;		
			} else {
				LOGGER.info("文件为空");
			}
		}
		
		 int num=communityservice.addCommunity(community);
		 return num;
	}
	/**
	 * 根据id查询单个小区
	 * @return
	 */
	@RequestMapping("getCommunityById/{id}")
	@ResponseBody
	public Object getCommunityById(@PathVariable("id") Integer communityId) {
		return communityservice.getCommunityById(communityId);
	}
	/* 修改小区
	 * 
	 * @param community
	 * @param result
	 * @param picFile
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@PostMapping(value ="UpdateCommunityById.json")
	public Object updateCommunity(@Valid Community community, BindingResult result, HttpServletRequest request)
			throws Exception {
		MultipartHttpServletRequest murequest = (MultipartHttpServletRequest) request;
		List<MultipartFile> communityImage = murequest.getFiles("communityImage");
		for (MultipartFile multipartFile : communityImage) {
			if (!multipartFile.isEmpty()) {
				 String fileName=uploadUtil.upload(murequest, multipartFile);
				//设置实体类
				 community.setCommunityImage(fileName);		
			} 
		}
		List<MultipartFile> communityLogo=murequest.getFiles("communityLogo");
		for (MultipartFile multipartFile : communityLogo) {
			if (!multipartFile.isEmpty()) {
				//获取文件上传的路径
				 String fileName=uploadUtil.upload(murequest, multipartFile);
				//设置实体类
				 community.setCommunityLogo(fileName);;		
			} else {
				System.out.println("filesempty====");
			}
		}
		return communityservice.updateCommunity(community);	
	}
	/**
	 * 删除小区
	 * 
	 * @return
	 */
	@RequestMapping("deleteCommunity.json")
	@ResponseBody
	public Object deleteCommunityByid(HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("communityId"));
		return 	communityservice.deleteCommunityById(id);
	}
	/**
	 * 查询名字
	 * @return
	 */
	@RequestMapping("getAllCommunityName.json")
	@ResponseBody
	public Object getAllName() {
		return communityservice.getAllCommunityName();
	}
}
