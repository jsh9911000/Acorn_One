package com.one.project.product.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.product.dto.ProductDto;
import com.one.project.product.service.ProductService;


@Controller
public class ProductController {

	
	@Autowired
	private ProductService service;
	
		//gallery 사진 업로드 form 페이지로 이동
		@RequestMapping("/product/upload_form")
		public ModelAndView authUploadForm(HttpServletRequest request) {
			
			return new ModelAndView("product/upload_form");
		}
		//gallery 사진 업로드 & DB 저장
		@RequestMapping("/product/upload")
		public ModelAndView authUpload(ProductDto dto, HttpServletRequest request) {
			//form 에서 dto 로 데이터 받아옴
			//dto : caption, MultipartFile image 를 가지고 있다.
			//request :  imagePath 만드는데 사용, session 영역의 id 가져오는데 사용
			service.saveImage(dto, request);
			
			return new ModelAndView("product/upload");
		}
		//imagePath 구성 X -> dto 로 imagePath 를 받아서 DB 에 저장하기
		@RequestMapping("/product/insert2")
		public ModelAndView authInsert(ProductDto dto, HttpServletRequest request) {
			//dto : caption, imagePath 가지고 있다.
			//request : dto 에 writer(id) 추가
			service.insert2(dto, request);
			
			return new ModelAndView("product/upload");
		}
	
	@RequestMapping("/product/updateList")
	public String getList(HttpServletRequest request) {
		service.getList(request);
		return "product/updateList";
	}
	
	@RequestMapping("/product/updateForm")
	public String update(HttpServletRequest request) {
		service.getData(request);
		
		return "product/updateForm";	
	}
	
	@RequestMapping("/product/updateForm/delete")
	public String delete(@RequestParam int pro_num, HttpServletRequest request) {
		service.delete(pro_num, request);
		
		return "redirect:/product/updateList.do";
	}

}
