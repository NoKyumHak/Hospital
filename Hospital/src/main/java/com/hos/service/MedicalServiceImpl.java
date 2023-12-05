package com.hos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.DoctorMapper;
import com.hos.mapper.MedicalMapper;
import com.hos.model.CheckVO;
import com.hos.model.Criteria;
import com.hos.model.DoctorVO;
import com.hos.model.RecordVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MedicalServiceImpl implements MedicalService {

	@Autowired
	private MedicalMapper medicalmapper;
	

	
	/* 예약 확인 */
	@Override
	public List<CheckVO> reservCheck() {
		log.info("reservCheck()......");
		return medicalmapper.reservCheck();
	}
	
	/* 진료 추가 */
	@Override
	public void recordInsert(RecordVO record) {
		log.info("recordInsert().......");
		medicalmapper.recordInsert(record);
	}
	
	/* 의사 리스트 */
	@Override
	public List<DoctorVO> DoctorList(Criteria cri) {
		log.info("goodsGetTotalList()..........");
		return medicalmapper.DoctorList(cri);
	}

	/* 의사 총수 */
	public int DoctodTotal(Criteria cri) {
		log.info("goodsGetTotal().........");
		return medicalmapper.DoctodTotal(cri);
	}	
	@Override
	public DoctorVO doctorGetDetail(RecordVO record) throws Exception {
		
		return medicalmapper.doctorGetDetail(record);
		
	}
}
