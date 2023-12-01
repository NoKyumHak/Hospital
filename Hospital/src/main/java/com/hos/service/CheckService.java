package com.hos.service;

import java.util.List;

import com.hos.model.CheckVO;
import com.hos.model.MemberVO;

public interface CheckService {
	
	// 예약
	public void insertCheck(CheckVO check) throws Exception;
	
	// 예약 정보 전달
	public CheckVO checkGetDetail(MemberVO member) throws Exception;
		
}
