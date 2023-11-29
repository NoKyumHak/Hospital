package com.hos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hos.model.CheckVO;
import com.hos.model.MemberVO;
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



	// 마이 페이지 - 수정 페이지 이동
	@RequestMapping(value = "mypageUpdate", method = RequestMethod.GET)
	public void updateGET(HttpServletRequest request, MemberVO member, Model model) throws Exception {
		HttpSession session = request.getSession();

		member = (MemberVO) session.getAttribute("member");
		member = memberservice.memberGetDetail(member);
		logger.info("mypageGetUpdate......" + member);

		logger.info("마이 페이지 - 수정 페이지 진입");
		model.addAttribute("mypageUpdate", member);
	}

	// 마이 페이지 - 수정버튼 서비스
	@RequestMapping(value = "mypageUpdate", method = RequestMethod.POST)
	public String updatePOST(MemberVO member, RedirectAttributes rttr) throws Exception {

		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호
		System.out.println(member);
		rawPw = member.getMemberPw(); // 비밀번호 데이터 얻음
		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		member.setMemberPw(encodePw); // 인코딩된 비밀번호 member객체에 다시 저장
		System.out.println(encodePw);
		int result = memberservice.mypageModify(member);

		rttr.addFlashAttribute("Updateresult", result);

		return "redirect:/main";

	}

	// 마이 페이지 - 예약 정보 조회 페이지 이동
	@RequestMapping(value = "mypageReserveView", method = RequestMethod.GET)
	public void mypageReserveViewGET(HttpServletRequest request,MemberVO member, CheckVO check, Model model) throws Exception {
		HttpSession session = request.getSession();
		System.out.println(member);
		check = (CheckVO) session.getAttribute("mypageDetail");
		check = checkservice.checkGetDetail(check);
		logger.info("checkGetDetail......" + check);
		System.out.println(check);

		/* 예약자 정보 */
		model.addAttribute("checkDetail", check);
	}
	
	// 마이 페이지 이동
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public void mypageGET(HttpServletRequest request, MemberVO member, Model model) throws Exception {
		HttpSession session = request.getSession();

		member = (MemberVO) session.getAttribute("member");
		member = memberservice.memberGetDetail(member);
		logger.info("mypageGetDetail......" + member);

		/* 예약자 정보 */
		model.addAttribute("mypageDetail", member);
	}

}
