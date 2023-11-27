package com.hos.service;

import java.util.List;

import com.hos.model.CheckVO;
import com.hos.model.RecordVO;

public interface MedicalService {
	
	/* 예약 확인 */
	public List<CheckVO> reservCheck();
	
	/* 진료 추가 */
	public void recordInsert(RecordVO record);
}
