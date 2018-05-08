package com.fcz.entity;

public class Result <T>{
	private Integer code;	//错误码
	
	private String msg;		//提示信息
	
	private T data;         //T为泛型，数据

	
	public Result(Integer code, String msg, T data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
	
}
