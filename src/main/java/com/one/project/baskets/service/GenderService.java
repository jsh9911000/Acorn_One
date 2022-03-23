package com.one.project.baskets.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface GenderService {

	public void buy(HttpServletRequest request, ModelAndView mView, String p_name);

	public void un_buy(HttpServletRequest request, ModelAndView mView, String p_name);

}
