package com.fcz.serviceImpl.dataCenterServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fcz.dao.CommunityMapper;
import com.fcz.entity.Community;
import com.fcz.service.dataCenterService.CommunityService;

/**
 * 小区实现类
 * @author 夏目
 *
 */
@Service
public class CommunityServiceImpl implements CommunityService{

	@Autowired
	private CommunityMapper communitymapper;
	
	public List<Community> getAllCommunityByName(String communityName) {
		return communitymapper.getCommunityByName(communityName);
	}

	public long getCommunityCount(String communityName) {
		return communitymapper.getCommunityCountByName(communityName);
	}

	public int addCommunity(Community community) {
		return communitymapper.insert(community);
	}

	public Community getCommunityById(int id) {
		return communitymapper.selectByPrimaryKey(id);
	}

	public int updateCommunity(Community community) {
		return communitymapper.updateByPrimaryKeySelective(community);
	}

	public int deleteCommunityById(int id) {
		return communitymapper.deleteByPrimaryKey(id);
	}

	public List<String> getAllCommunityName() {
		return communitymapper.getAllCommunityName();
	}

}
