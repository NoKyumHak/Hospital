package com.hos.service;

import com.hos.model.CheckVO;
import com.hos.model.MemberVO;

public interface MemberService {

	// 회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String memberId) throws Exception;

	// 전화번호 중복 검사
	public int phoneCheck(String memberPhone) throws Exception;

	// 주민번호 중복 검사
	public int idnumCheck(String memberIDNum) throws Exception;
	
	// 예약
	public void memberReserve(CheckVO check) throws Exception;
	
	// 로그인
    public MemberVO memberLogin(MemberVO member) throws Exception;
    
    public MemberVO checkGetDetail(MemberVO member) throws Exception;
}