package com.fcz.service.dataCenterService;

import java.util.List;

import com.fcz.entity.TenementState;

public interface TenementStateService {
	/**
     * 查询全部居住状态
     * @return
     */
    List<TenementState> getAllTenementState();
}
