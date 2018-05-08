package com.fcz.utils;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;


public class  BindTableUtil {
	public static <T> Object bindTableUtil(Integer code,long count,Object object) {
		Map<String, Object>map=new HashMap<String, Object>();
    	map.put("code", code);
		map.put("count",count);
		map.put("data",object);							  		
		return JSONArray.toJSONString(map);	
	}
}
