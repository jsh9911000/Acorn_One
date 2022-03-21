package com.one.project.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.product.dto.ProductDto;

@Controller	
public class ProductController {

	@RequestMapping
	public ModelAndView authUpload(ProductDto dto, HttpServletRequest request) {
		
	}
}
