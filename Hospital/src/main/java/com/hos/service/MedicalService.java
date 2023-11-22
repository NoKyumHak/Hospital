package com.hos.service;

import java.util.List;

import com.hos.model.CheckVO;

public interface MedicalService {
	
	/* 예약 확인 */
	public List<CheckVO> reservCheck();
	
}
