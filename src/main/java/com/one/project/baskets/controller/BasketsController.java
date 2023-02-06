package com.one.project.baskets.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.one.project.baskets.service.BasketsService;
import com.one.project.product.dto.ProductDto;
import com.one.project.product.service.ProductService;
import com.one.project.baskets.service.GenderService;

@Controller
public class BasketsController {
	//의존성 객체 주입 3개.
	@Autowired
	private ProductService service2;
	@Autowired
	private BasketsService service;
	@Autowired
	private GenderService g_service;

	@RequestMapping("/product/list")
	public ModelAndView list(ModelAndView mView) {
		service.getListMember(mView);
		List<ProductDto> list = service2.getProductList();
		List<ProductDto> list1 = service2.recoList_Man();
		List<ProductDto> list2 = service2.recoList_Woman();
		mView.addObject("foodlist", list);
		mView.addObject("recolist_Man", list1);
		mView.addObject("rocolist_Woman", list2);
		mView.setViewName("product/list");
		return mView;
	}

	@RequestMapping("/product/insert")
	public String insert(HttpServletRequest request, ModelAndView mView) {
		String p_name = (String) request.getParameter("p_name");
		int p_price = Integer.parseInt(request.getParameter("p_price"));

		HttpSession session = request.getSession();
		String u_name = (String) session.getAttribute("id");
		String gender = (String) session.getAttribute("gender");

		service.saveBasket(p_name, p_price, u_name, gender);
		g_service.buy(request, mView, p_name);
		mView.setViewName("/product/insert");
		return "redirect:/product/list.do";
	}

	@RequestMapping("/product/delete")
	public String delete(HttpServletRequest request, ModelAndView mView) {

		int b_num = Integer.parseInt(request.getParameter("b_num"));
		service.deleteBasket(b_num);
		String p_name = (String) request.getParameter("p_name");
		g_service.un_buy(request, mView, p_name);
		mView.setViewName("/product/delete");
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

		return "redirect:/product/insert.do";
	}

}
