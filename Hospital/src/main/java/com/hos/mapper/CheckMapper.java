package com.hos.mapper;

import com.hos.model.CheckVO;

public interface CheckMapper {

	// 예약 버튼 기능
	public int insertCheck(CheckVO check);
	
	// 예약 정보 가져오기
	public CheckVO checkGetDetail(CheckVO check);
}