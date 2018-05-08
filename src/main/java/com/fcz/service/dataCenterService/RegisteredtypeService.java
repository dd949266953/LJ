package com.fcz.service.dataCenterService;

import java.util.List;

import com.fcz.entity.Registeredtype;

public interface RegisteredtypeService {
	/**
     * 查询全部户口类型
     * @return
     */
    List<Registeredtype>getAll();
}
