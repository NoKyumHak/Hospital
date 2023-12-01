package com.hos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.RecordMapper;
import com.hos.model.RecordVO;

@Service
public class RecordServiceImpl implements RecordService{

	@Autowired
	RecordMapper recordmapper;
	
	@Override
	public RecordVO recordGetDetail(RecordVO record) throws Exception {
		return recordmapper.recordGetDetail(record);
	}

}