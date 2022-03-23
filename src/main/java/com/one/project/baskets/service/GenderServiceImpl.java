package com.one.project.baskets.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.baskets.dao.GenderDao;
import com.one.project.baskets.dto.GenderDto;

@Service
public class GenderServiceImpl implements GenderService {
	@Autowired
	private GenderDao dao;
	
	@Override
	public void buy(HttpServletRequest request, ModelAndView mView,String p_name) {
		GenderDto dto = new GenderDto();
		dto.setP_name(p_name);
		String gender=(String)request.getSession().getAttribute("gender");
		if(gender.equals("man")) {
			dao.plusMan(p_name);
		}else {
			dao.plusWoman(p_name);
		}
		
		
		
		
	}

	@Override
	public void un_buy(HttpServletRequest request, ModelAndView mView, String p_name) {
		GenderDto dto = new GenderDto();
		dto.setP_name(p_name);
		String gender=(String)request.getSession().getAttribute("gender");
		if(gender.equals("man")) {
			dao.minusMan(p_name);
		}else {
			dao.minusWoman(p_name);
		}
		
	}
	
	

}
