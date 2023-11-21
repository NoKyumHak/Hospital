package com.hos.service;

import com.hos.model.CheckVO;
import com.hos.model.MemberVO;

public interface MemberService {

	// 회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 예약
	public void memberReserve(CheckVO check) throws Exception;

}