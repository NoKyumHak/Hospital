package com.hos.mapper;

import java.util.List;

import com.hos.model.CheckVO;

public interface MedicalMapper {
	
	/* 예약 확인 */
	public List<CheckVO> reservCheck();
}
