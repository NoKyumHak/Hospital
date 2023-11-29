package com.hos.service;

import com.hos.model.CheckVO;

public interface CheckService {
	
	// 예약
	public void insertCheck(CheckVO check) throws Exception;
	
	// 예약 정보 전달
	public CheckVO checkGetDetail(CheckVO check) throws Exception;
}
