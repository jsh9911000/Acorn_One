package com.one.project.users.controller;

import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.users.dto.UsersDto;
import com.one.project.users.service.UsersService;

@Controller
public class UsersController {

	@Autowired
	private UsersService service;

	@RequestMapping("/users/logout")
	public String logout(HttpSession session) {

		session.removeAttribute("id");
		return "users/logout";
	}

	@RequestMapping(value = "/users/signup_form", method = RequestMethod.GET)
	public String signupForm() {
		return "users/signup_form";
	}

	@RequestMapping("/users/checkid")
	@ResponseBody
	public Map<String, Object> checkid(@RequestParam String inputId) {

		return service.isExistId(inputId);
	}

	@RequestMapping(value = "/users/sign", method = RequestMethod.POST)
	public ModelAndView signup(ModelAndView mView, UsersDto dto) {

		service.addUser(dto);

		mView.setViewName("users/sign");
		return mView;
	}

	@RequestMapping("/users/info")
	public ModelAndView authInfo(HttpSession session, ModelAndView mView, HttpServletRequest request) {

		service.getInfo(session, mView);

		mView.setViewName("users/info");
		return mView;
	}

	@RequestMapping("/users/login")
	public ModelAndView login(ModelAndView mView, UsersDto dto, @RequestParam String url, HttpSession session) {

		service.loginProcess(dto, session);

		String encodedUrl = URLEncoder.encode(url);
		mView.addObject("url", url);
		mView.addObject("encodedUrl", encodedUrl);
		mView.setViewName("users/login");
		return mView;
	}

	@RequestMapping("/users/pwd_updateform")
	public ModelAndView pwdUpdateForm(ModelAndView mView, HttpServletRequest request) {

		mView.setViewName("users/pwd_updateform");
		return mView;
	}

	@RequestMapping("/users/pwd_update")
	public ModelAndView pwdUpdate(UsersDto dto, ModelAndView mView, HttpSession session, HttpServletRequest request) {

		service.updateUserPwd(session, dto, mView);

		mView.setViewName("users/pwd_update");
		return mView;
	}

	@RequestMapping("/users/delete")
	public ModelAndView authDelete(HttpSession session, ModelAndView mView, HttpServletRequest request) {

		service.deleteUser(session, mView);

		mView.setViewName("users/delete");
		return mView;
	}

}
