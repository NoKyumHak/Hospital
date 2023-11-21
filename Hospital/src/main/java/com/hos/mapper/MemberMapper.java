package com.hos.mapper;

import com.hos.model.CheckVO;
import com.hos.model.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void memberJoin(MemberVO member);
	
	// 예약하기
	public void memberReserve(CheckVO check);
}
