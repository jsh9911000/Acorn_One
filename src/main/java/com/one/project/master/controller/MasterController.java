package com.one.project.master.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.master.service.MasterService;

@Controller
public class MasterController {
	@Autowired
	private MasterService service;

	@RequestMapping("/product/list2")
	public ModelAndView list(ModelAndView mView) {

		service.getListMember(mView);

		mView.setViewName("product/list2");
		// 4. ModelAndView 객체를 리턴해 준다.
		return mView;
	}

	@RequestMapping("/product/delete2")
	public String delete(HttpServletRequest request) {

		int b_num = Integer.parseInt(request.getParameter("b_num"));
		service.deleteMaster(b_num);

		return "redirect:/product/list2.do";
	}

	@RequestMapping("/product/clear")
	public String pay(HttpServletRequest request) {

		service.clear();
		return "redirect:/product/list2.do";
	}

}
