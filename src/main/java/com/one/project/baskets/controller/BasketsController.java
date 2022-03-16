package com.one.project.baskets.controller;

import javax.servlet.http.HttpServletRequest;

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
		
		
		//service.saveBasket(request);
		service.saveBasket(p_name,p_price);
		return "redirect:/product/list.do";
	}
	
}
