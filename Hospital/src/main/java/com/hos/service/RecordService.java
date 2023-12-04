package com.hos.service;

import java.util.ArrayList;

import com.hos.model.MemberVO;
import com.hos.model.RecordVO;

public interface RecordService {
	public ArrayList<RecordVO> memberRecordGet(MemberVO member) throws Exception;
	// 예약 페이지에 멤버 정보 전달
    public RecordVO recordGetDetail(RecordVO record) throws Exception;
	
}