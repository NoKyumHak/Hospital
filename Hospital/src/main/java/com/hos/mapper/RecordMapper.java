package com.hos.mapper;

import java.util.List;

import com.hos.model.Criteria;
import com.hos.model.MemberVO;
import com.hos.model.RecordVO;

public interface RecordMapper {
	
	public RecordVO recordGetDetail(RecordVO record);
	
	public List<RecordVO> memberRecordGet(MemberVO member);
	
	public RecordVO recordDetail(int recordNum);
	
	public List<RecordVO> recordGetList(Criteria cri);
	
	public int recordGetTotal(Criteria cri);
	
}