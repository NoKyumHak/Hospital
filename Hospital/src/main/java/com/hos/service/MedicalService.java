package com.hos.service;

import java.util.List;

import com.hos.model.CheckVO;
import com.hos.model.Criteria;
import com.hos.model.DoctorVO;
import com.hos.model.RecordVO;

public interface MedicalService {
	
	/* 예약 확인 */
	public List<CheckVO> reservCheck();
	
	/* 진료 추가 */
	public void recordInsert(RecordVO record);
	
	/* 의사 리스트 */
	public List<DoctorVO> DoctorList(Criteria cri);
	
	/* 의사 총수 */
	public int DoctodTotal(Criteria cri);	
	
	// record로 doctor 정보 전달
	public DoctorVO doctorGetDetail(RecordVO record) throws Exception;
}
