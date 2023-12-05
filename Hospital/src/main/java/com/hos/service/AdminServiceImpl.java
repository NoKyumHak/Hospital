package com.hos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hos.mapper.AdminMapper;
import com.hos.model.DoctorVO;
import com.hos.model.RecordVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminmapper;

	@Transactional
	@Override
	public void doctorEnroll(DoctorVO doctor) {
		log.info("의료진 등록 진행중........");
		log.info(doctor);
		adminmapper.doctorEnroll(doctor);
		if(doctor.getImageList() == null || doctor.getImageList().size() <= 0) {
			return;
		}

		doctor.getImageList().forEach(attach -> {
			log.info(doctor.getDoctorNum());
			attach.setDoctorNum(doctor.getDoctorNum());
			adminmapper.imageEnroll(attach);

		});
	}

	

}
