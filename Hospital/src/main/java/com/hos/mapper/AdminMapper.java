package com.hos.mapper;

import com.hos.model.DocImageVO;
import com.hos.model.DoctorVO;
import com.hos.model.RecordVO;

public interface AdminMapper {
	public void doctorEnroll(DoctorVO doctor);
	
	public void imageEnroll(DocImageVO vo);

	
}
