package com.hos.mapper;

import java.util.List;

import com.hos.model.CheckVO;
import com.hos.model.RecordVO;

public interface MedicalMapper {
	
	/* 예약 확인 */
	public List<CheckVO> reservCheck();
	
	/* 진료기록 추가 */
	public int recordInsert(RecordVO record);
}

