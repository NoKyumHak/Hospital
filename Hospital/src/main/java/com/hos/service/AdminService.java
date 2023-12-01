package com.hos.service;

import com.hos.model.DoctorVO;
import com.hos.model.RecordVO;

public interface AdminService {
	// 상품등록
	public void doctorEnroll(DoctorVO doctor);
	
	// record로 doctor 정보 전달
	public DoctorVO doctorGetDetail(RecordVO record) throws Exception;
}
