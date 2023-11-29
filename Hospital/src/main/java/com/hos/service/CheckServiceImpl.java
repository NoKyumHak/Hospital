package com.hos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.CheckMapper;
import com.hos.model.CheckVO;
import com.hos.model.MemberVO;

@Service
public class CheckServiceImpl implements CheckService {

	@Autowired
	CheckMapper checkmapper;

	@Override
	public void insertCheck(CheckVO check) throws Exception {
		checkmapper.insertCheck(check);
	}

	@Override
	public CheckVO checkGetDetail(MemberVO member) throws Exception {
		return checkmapper.checkGetDetail(member);
	}

}
