package com.hos.mapper;

import com.hos.model.CheckVO;
import com.hos.model.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void memberJoin(MemberVO member);
	
	// 아이디 중복 검사
	public int idCheck(String memberId);

	// 전화번호 중복 검사
	public int phoneCheck(String memberPhone);

	// 주민번호 중복 검사
	public int idnumCheck(String memberIDNum);
	
	// 예약하기
	public void memberReserve(CheckVO check);
	
	// 로그인
    public MemberVO memberLogin(MemberVO member);

	/* 예약 페이지에 값 가져오기 */
	public MemberVO checkGetDetail(MemberVO member);

}
