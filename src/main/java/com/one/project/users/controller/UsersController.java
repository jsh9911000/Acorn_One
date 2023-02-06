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
/*
 *	[ MVC ]
 *	Model: 데이터.
 * View: 응답 페이지.
 * Controller: 요청에 대한 제어(처리) 하는 객체.
 * 
 * [ MVC Spring에서 자주 사용하는 객체 ]
 * 1.ModelAndView: Controller - Service 로직에서 DAO를 통한 결과값을 저장하고 View 페이지에 전달하는 역할을 한다.
 * 2.HttpServletRequest: 클라이언트의 요청에 대한 파라미터 값을 자동으로 가져오는 역할을 한다. => 메소드의 매개변수로 선언함으로써 자동으로 파라미터 값을 가져온다.
 * 3.HttpSession: 특정 데이터를 Session Scope에 저장하고 활용하는 용도로 사용한다. 주로 ID와 같은 클라이언트의 정보를 웹 브라우저 Session Scope에 저장해서 활용한다.
 * 4.DTO: View 페이지에서 <form>의 <input>의 name 속성이 DTO의 필드명과 같다면 자동 바인딩이 된다. 클라이언트가 입력한 데이터가 DTO에 저장되고 그 다음에 Controller에서
 * 			메소드의 매개변수에 DTO를 선언함으로써 사용할 수 있게 되는 로직이다. 
 * 5.@RequestParam: URL을 통해서 파리미터 값을 가져온다.
 * 
 * [ MVC 패턴 ]
 * 요청 ==> Controller ==> Service ==> DAO ==> DB ==> Service ==> Controller ==> View 응답.
 */
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
