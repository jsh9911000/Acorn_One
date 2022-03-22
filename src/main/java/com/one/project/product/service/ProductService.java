package com.one.project.product.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.one.project.product.dto.ProductDto;

public interface ProductService {
	public void saveImage(ProductDto dto, HttpServletRequest request);
	public void insert2(ProductDto dto, HttpServletRequest request);
	public void getList(HttpServletRequest request);//전체 리스트를 가져오는 기능
	public void getData(int num, ModelAndView mView);//update하기 위해 하나의 정보를 불러오는 기능
	public void update(ProductDto dto);//불러온 정보를 업데이트 하는 기능
	public void delete(int num);
	public List<ProductDto> getProductList();

}
