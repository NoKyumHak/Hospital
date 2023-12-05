package com.hos.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hos.model.Criteria;
import com.hos.model.MemberVO;
import com.hos.model.RecordVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private RecordMapper mapper;			//MemberMapper.java 인터페이스 의존성 주입

	
	/* 작가 목록 테스트 */
    @Test
    public void recordGetTotalTest() throws Exception{
        
        Criteria cri = new Criteria();    // 3페이지 & 10개 행 표시
        
        int total = mapper.recordGetTotal(cri);
            System.out.println("total");
        }
        
    }
    
    
