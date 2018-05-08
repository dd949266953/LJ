package com.fcz.entity;

public class Car {
    private Integer carid;

    private Double carcc;

    private String carcolor;

    private String carno;

    private String carnumber;

    private String carphoto;

    private Integer cartype;

    private String drivinglicense;

    private String licence;

    private String remark;

    private String stopcarno;

    private Integer tenementid;

    private Integer carportid;
    //***实体类属性
    private Tenement tenement;
    
    private Community community;
    
    private Carport carport;
    
    private CarPortState carPortState;

    public Integer getCarid() {
        return carid;
    }
    

    

    public void setCarid(Integer carid) {
        this.carid = carid;
    }

    public Double getCarcc() {
        return carcc;
    }

    public void setCarcc(Double carcc) {
        this.carcc = carcc;
    }

    public String getCarcolor() {
        return carcolor;
    }

    public void setCarcolor(String carcolor) {
        this.carcolor = carcolor;
    }

    public String getCarno() {
        return carno;
    }

    public void setCarno(String carno) {
        this.carno = carno;
    }

    public String getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(String carnumber) {
        this.carnumber = carnumber;
    }

    public String getCarphoto() {
        return carphoto;
    }

    public void setCarphoto(String carphoto) {
        this.carphoto = carphoto;
    }

    public Integer getCartype() {
        return cartype;
    }

    public void setCartype(Integer cartype) {
        this.cartype = cartype;
    }

    public String getDrivinglicense() {
        return drivinglicense;
    }

    public void setDrivinglicense(String drivinglicense) {
        this.drivinglicense = drivinglicense;
    }

    public String getLicence() {
        return licence;
    }

    public void setLicence(String licence) {
        this.licence = licence;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getStopcarno() {
        return stopcarno;
    }

    public void setStopcarno(String stopcarno) {
        this.stopcarno = stopcarno;
    }

    public Integer getTenementid() {
        return tenementid;
    }

    public void setTenementid(Integer tenementid) {
        this.tenementid = tenementid;
    }

    public Integer getCarportid() {
        return carportid;
    }

    public void setCarportid(Integer carportid) {
        this.carportid = carportid;
    }




	public Tenement getTenement() {
		return tenement;
	}




	public void setTenement(Tenement tenement) {
		this.tenement = tenement;
	}




	public Community getCommunity() {
		return community;
	}




	public void setCommunity(Community community) {
		this.community = community;
	}




	public Carport getCarport() {
		return carport;
	}




	public void setCarport(Carport carport) {
		this.carport = carport;
	}




	public CarPortState getCarPortState() {
		return carPortState;
	}




	public void setCarPortState(CarPortState carPortState) {
		this.carPortState = carPortState;
	}
    
    
}