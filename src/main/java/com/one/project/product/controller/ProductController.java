package com.one.project.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.product.dto.ProductDto;
import com.one.project.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;

	@RequestMapping("/product/upload_form")
	public ModelAndView authUploadForm(HttpServletRequest request) {

		return new ModelAndView("product/upload_form");
	}

	@RequestMapping("/product/upload")
	public ModelAndView authUpload(ProductDto dto, HttpServletRequest request) {

		service.saveImage(dto, request);

		return new ModelAndView("product/upload");
	}

	@RequestMapping("/product/insert2")
	public ModelAndView authInsert(ProductDto dto, HttpServletRequest request) {

		service.insert2(dto, request);

		return new ModelAndView("product/upload");
	}

	@RequestMapping("/product/updateList")
	public String list(HttpServletRequest request) {
		service.getList(request);
		return "product/updateList";
	}

	@RequestMapping("/product/updateForm")
	public ModelAndView getData(int num, ModelAndView mView) {
		service.getData(num, mView);
		mView.setViewName("product/updateForm");
		return mView;
	}

	@RequestMapping(value = "/product/update", method = RequestMethod.POST)
	public String update(ProductDto dto) {
		service.update(dto);
		return "product/update";
	}

	@RequestMapping("/product/pro_delete")
	public String delete(int num, String pro_name) {
		service.delete(num);
		service.remove(pro_name);
		return "redirect:/product/updateList.do";
	}

	@RequestMapping("/product/remove")
	public void remove(String pro_name) {
		service.remove(pro_name);

	}

}
