package com.hos.mapper;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hos.model.RecordVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MedicalMapperTests {
	
	@Autowired
	private MedicalMapper medicalmapper;
	
	/*
	@Test
	public void reservCheckTest() {
		System.out.println("reservCheck()..........." + medicalmapper.reservCheck());
	}
	*/
	
	@Test
	public void recordNumTest() {
		
		RecordVO record = new RecordVO();
		
		Date date = new Date();
		
		record.setDoctorNum(1);
		record.setMemberNum(2);
		record.setRecordContent("test");
		record.setRecordDate(date);
		record.setDsDate(date);
		record.setExpense("a");
		
		medicalmapper.recordInsert(record);
	}
}
