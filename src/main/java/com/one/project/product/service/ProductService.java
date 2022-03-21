package com.one.project.product.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.one.project.product.dto.ProductDto;

public interface ProductService {
	public void saveImage(ProductDto dto, HttpServletRequest request);
	public void insert2(ProductDto dto, HttpServletRequest request);
	public void getList(HttpServletRequest request);//전체 리스트를 가져오는 기능
	public void getData(HttpServletRequest request);//update하기 하나의 정보를 불러오는 기능
	public void update(ProductDto dto);
	public void delete(int pro_num, HttpServletRequest request);
}
