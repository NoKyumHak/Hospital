package com.hos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.MemberMapper;
import com.hos.model.CheckVO;
import com.hos.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper membermapper;

	@Override
	public void memberJoin(MemberVO member) throws Exception {

		membermapper.memberJoin(member);

	}
	
	@Override
	public int idCheck(String memberId) throws Exception {
		
		return membermapper.idCheck(memberId);
	}
	
	@Override
	public int idnumCheck(String memberIDNum) throws Exception {
		// TODO Auto-generated method stub
		return membermapper.idnumCheck(memberIDNum);
	}
	
	@Override
	public int phoneCheck(String memberPhone) throws Exception {
		// TODO Auto-generated method stub
		return membermapper.phoneCheck(memberPhone);
	}
	 /* 로그인 */
    @Override
    public MemberVO memberLogin(MemberVO member) throws Exception {
        
        return membermapper.memberLogin(member);
    }

	@Override
	public void memberReserve(CheckVO check) throws Exception {
		
		membermapper.memberReserve(check);
		
	}

	@Override
	public MemberVO checkGetDetail(MemberVO member) throws Exception {
		return membermapper.checkGetDetail(member);
	}

}