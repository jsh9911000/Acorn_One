package com.one.project.product.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.one.project.product.dto.ProductDto;

public interface ProductService {
	public void saveImage(ProductDto dto, HttpServletRequest request);

	public void getList(HttpServletRequest request);

	public void getData(int num, ModelAndView mView);

	public void update(ProductDto dto);

	public void delete(int num);

	public List<ProductDto> getProductList();

	public void insert2(ProductDto dto, HttpServletRequest request);

	public void remove(String pro_name);

	public List<ProductDto> recoList_Man();

	public List<ProductDto> recoList_Woman();

}
