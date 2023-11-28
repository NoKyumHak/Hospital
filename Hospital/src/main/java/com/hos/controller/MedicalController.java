package com.hos.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hos.model.CheckVO;
import com.hos.model.RecordVO;
import com.hos.service.MedicalService;

@Controller
@RequestMapping("/medical")
public class MedicalController {
	private static final Logger logger = LoggerFactory.getLogger(MedicalController.class);
	
	@Autowired
	private MedicalService medicalservice;
	
	/* 의료진 메인 페이지 이동 */
    @RequestMapping(value="main", method = RequestMethod.GET)
    public void medicalMainGET() throws Exception{
        
        logger.info("의료진 메인 페이지 이동");
        
    }
	
	/* 예약 확인 페이지 접속 */
	@RequestMapping(value = "reservList", method = RequestMethod.GET)
	public void goodsManageGET(CheckVO check, Model model) throws Exception{
		
		logger.info("상품 등록 페이지 접속");
		
		/* 상품 리스트 데이터 */
		List list = medicalservice.reservCheck();
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}
		
		/* 페이지 인터페이스 데이터 */
		/*
		model.addAttribute("pageMaker", new PageDTO(cri, adminService.goodsGetTotal(cri)));
		*/
	}
	
	/* 진료 기록 추가 페이지 접속 */
    @RequestMapping(value = "recordInsert", method = RequestMethod.GET)
    public void recordInsertGET(Model model) throws Exception{
        logger.info("상품 등록 페이지 접속");
        
        /* 상품 리스트 데이터 */
		List list = medicalservice.reservCheck();
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}
    }
	
	/* 환자 목록 팝업창 */
	@GetMapping("/patientPop")
	public void patientPopGET(Model model) throws Exception{
		
		logger.info("patientPopGET.......");
		
		/* 게시물 출력 데이터 */
		List list = medicalservice.reservCheck();
		
		if(!list.isEmpty()) {
			model.addAttribute("list",list);	// 작가 존재 경우
		} else {
			model.addAttribute("listCheck", "empty");	// 작가 존재하지 않을 경우
		}
		
		/*
		//페이지 이동 인터페이스 데이터 
		model.addAttribute("pageMaker", new PageDTO(cri, authorService.authorGetTotal(cri)));
		*/
	}
	
	/* 진료 기록 등록 */
	@PostMapping("/recordInsert")
	public String recordInsertPOST(RecordVO record) {
		
		logger.info("recordInsertPOST......" + record);
		
		medicalservice.recordInsert(record);
		
		return "redirect:/medical/main";
	}
	

	// 메인 페이지 - 의료진 정보 페이지 이동
		@RequestMapping(value = "/goodsDetail", method = RequestMethod.GET)
		public void goodsDetailPageGET() {

			logger.info("메인 페이지 - 의료진 정보 페이지 진입");

		}
}
