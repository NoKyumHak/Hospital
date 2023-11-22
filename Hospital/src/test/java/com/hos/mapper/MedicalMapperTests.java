package com.hos.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MedicalMapperTests {
	
	@Autowired
	private MedicalMapper medicalmapper;
	
	@Test
	public void reservCheckTest() {
		System.out.println("reservCheck()..........." + medicalmapper.reservCheck());
	}
}