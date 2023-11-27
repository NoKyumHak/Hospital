package com.hos.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hos.service.CheckService;
import com.hos.service.MemberService;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {
	@Autowired
	private MemberService memberservice;

	@Autowired
	private CheckService checkservice;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// 마이 페이지 이동
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public void mypageGET() {

		logger.info("마이 페이지 진입");
	}

	// 마이 페이지 - 수정 페이지 이동
	@RequestMapping(value = "mypageUpdate", method = RequestMethod.GET)
	public void updateGET() {

		logger.info("마이 페이지 - 수정 페이지 진입");
	}
}
