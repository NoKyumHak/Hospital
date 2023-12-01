package com.hos.service;

import com.hos.model.RecordVO;

public interface RecordService {

	// 예약 페이지에 멤버 정보 전달
    public RecordVO recordGetDetail(RecordVO record) throws Exception;
	
}