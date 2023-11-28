package com.hos.mapper;

import java.util.List;

import com.hos.model.Criteria;
import com.hos.model.DoctorVO;

public interface DoctorMapper {
	public List<DoctorVO> authorGetList(Criteria cri);
}
