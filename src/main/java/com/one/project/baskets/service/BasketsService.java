package com.one.project.baskets.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.one.project.baskets.dto.BasketsDto;

public interface BasketsService {
	//public void getListMember(HttpServletRequest request);
	public void getListMember(ModelAndView mView);
	//public void saveBasket(HttpServletRequest request);
	public void saveBasket(String p_name, int p_price, String u_name,String gender);
	public void addGender();
	public void deleteBasket(int b_num);
	public void payBasket();
	public void moveBasket();
}
