package com.hos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.MedicalMapper;
import com.hos.model.CheckVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MedicalServiceImpl implements MedicalService {
	
	@Autowired
	private MedicalMapper medicalmapper;
	
	/* 예약 확인 */
	@Override
	public List<CheckVO> reservCheck() {
		log.info("reservCheck()......");
		return medicalmapper.reservCheck();
	}
	
}
