package com.hos.mapper;

import com.hos.model.DocImageVO;
import com.hos.model.DoctorVO;

public interface AdminMapper {
	public void doctorEnroll(DoctorVO doctor);
	
	public void imageEnroll(DocImageVO vo);
}
