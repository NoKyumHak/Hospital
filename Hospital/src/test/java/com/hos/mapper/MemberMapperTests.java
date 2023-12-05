package com.hos.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hos.model.RecordVO;
import com.hos.service.RecordService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private RecordService service;
	
	/* 작가 목록 테스트 */
    @Test
    public void recordGetTotalTest() throws Exception{
        
        int recordNum = 4;
        
        RecordVO rvo = new RecordVO();
        
        rvo = service.recordDetail(recordNum);
            System.out.println(rvo);
        }
        
    }
    
    
