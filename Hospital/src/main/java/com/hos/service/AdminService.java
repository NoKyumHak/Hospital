package com.hos.service;

import com.hos.model.DoctorVO;

public interface AdminService {
	// 상품등록
	public void doctorEnroll(DoctorVO doctor);
	
	// doctor 정보 전달
	public DoctorVO doctorGetDetail(DoctorVO doctor) throws Exception;
}
