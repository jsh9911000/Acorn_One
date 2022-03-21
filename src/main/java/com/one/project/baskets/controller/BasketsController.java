package com.one.project.baskets.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.baskets.service.BasketsService;

@Controller
public class BasketsController {
	@Autowired
	private BasketsService service;

	
	@RequestMapping("/product/list")
	public ModelAndView list(ModelAndView mView) {

		service.getListMember(mView);
		
		mView.setViewName("product/list");
		//4. ModelAndView 객체를 리턴해 준다.
		return mView;
	}
	

	@RequestMapping("/product/insert")
	public String insert(HttpServletRequest request) {
		String p_name = (String)request.getParameter("p_name");
		int p_price = Integer.parseInt(request.getParameter("p_price"));

		HttpSession session = request.getSession();
		String u_name= (String)session.getAttribute("id");
		String gender = (String)session.getAttribute("gender");

		service.saveBasket(p_name,p_price,u_name,gender);
		return "redirect:/product/list.do";
	}
	@RequestMapping("/product/delete")
	public String delete(HttpServletRequest request) {

		int b_num = Integer.parseInt(request.getParameter("b_num"));
		service.deleteBasket(b_num);

		return "redirect:/product/list.do";
	}
	@RequestMapping("/product/pay")
	public String pay(HttpServletRequest request) {
		
		service.payBasket();
		return "redirect:/product/list.do";
	}
	
	@RequestMapping("/product/move")
	public String move(HttpServletRequest request) {
		
		service.moveBasket();
		return "redirect:/product/pay.do";
	}
	
	@RequestMapping("/product/addgender")
	public String addgender(HttpServletRequest request) {
		
		service.addGender();
		return "redirect:/product/insert.do";
	}
	
}
