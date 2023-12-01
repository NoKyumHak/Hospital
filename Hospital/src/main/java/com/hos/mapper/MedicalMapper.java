package com.hos.mapper;

import java.util.List;

import com.hos.model.CheckVO;
import com.hos.model.Criteria;
import com.hos.model.DoctorVO;
import com.hos.model.RecordVO;

public interface MedicalMapper {
	
	/* 예약 확인 */
	public List<CheckVO> reservCheck();
	
	/* 진료기록 추가 */
	public int recordInsert(RecordVO record);
	
	/*의사 리스트*/
	public List<DoctorVO> DoctorList(Criteria cri);
	
	/*의사 수*/
	public int DoctodTotal(Criteria cri);

}

