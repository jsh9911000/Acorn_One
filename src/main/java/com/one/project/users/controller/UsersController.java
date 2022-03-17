package com.one.project.users.controller;

import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.users.dto.UsersDto;
import com.one.project.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService service;
	
	//회원 가입 요청 처리
	
	//회원 탈퇴 요청 처리
	//지워주세여
	//회원 정보 수정 폼 요청 처리
	
	//회원 정보 수정 폼 처리
	
	//로그인 요청 처리
	@RequestMapping("/users/login")
	public ModelAndView login(ModelAndView mView, UsersDto dto,
			@RequestParam String url, HttpSession session) {
		/*
		 *  서비스에서 비즈니스 로직을 처리할때 필요로  하는 객체를 컨트롤러에서 직접 전달을 해 주어야 한다.
		 *  주로, HttpServletRequest, HttpServletResponse, HttpSession, ModelAndView
		 *  등등의 객체 이다. 
		 */
		service.loginProcess(dto, session);
		
		String encodedUrl=URLEncoder.encode(url);
		mView.addObject("url", url);
		mView.addObject("encodedUrl", encodedUrl);
		
		mView.setViewName("users/login");
		return mView;
	}
}
