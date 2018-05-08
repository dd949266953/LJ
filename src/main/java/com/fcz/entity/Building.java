package com.fcz.entity;

import lombok.Data;

public class Building {
	
    private Integer buildingid;
    
    private String buildingaspect;

    private String buildingname;

    private String buildingremark;

    private Integer pliescount;

    private Integer unitcount;
  private int buildingtypeid;
    private Buildingtype buildingtype;
    
    private int communityid;
    private Community community;

    private String buildingStructure;

	public Integer getBuildingid() {
		return buildingid;
	}

	public void setBuildingid(Integer buildingid) {
		this.buildingid = buildingid;
	}

	public String getBuildingaspect() {
		return buildingaspect;
	}

	public void setBuildingaspect(String buildingaspect) {
		this.buildingaspect = buildingaspect;
	}

	public String getBuildingname() {
		return buildingname;
	}

	public void setBuildingname(String buildingname) {
		this.buildingname = buildingname;
	}

	public String getBuildingremark() {
		return buildingremark;
	}

	public void setBuildingremark(String buildingremark) {
		this.buildingremark = buildingremark;
	}

	public Integer getPliescount() {
		return pliescount;
	}

	public void setPliescount(Integer pliescount) {
		this.pliescount = pliescount;
	}

	public Integer getUnitcount() {
		return unitcount;
	}

	public void setUnitcount(Integer unitcount) {
		this.unitcount = unitcount;
	}

	public Buildingtype getBuildingtype() {
		return buildingtype;
	}

	public void setBuildingtype(Buildingtype buildingtype) {
		this.buildingtype = buildingtype;
	}

	public Community getCommunity() {
		return community;
	}

	public void setCommunity(Community community) {
		this.community = community;
	}

	public String getBuildingStructure() {
		return buildingStructure;
	}

	public void setBuildingStructure(String buildingStructure) {
		this.buildingStructure = buildingStructure;
	}

	public int getBuildingtypeid() {
		return buildingtypeid;
	}

	public void setBuildingtypeid(int buildingtypeid) {
		this.buildingtypeid = buildingtypeid;
	}

	public int getCommunityid() {
		return communityid;
	}

	public void setCommunityid(int communityid) {
		this.communityid = communityid;
	}

	

   
}