package com.one.project.product.service;

import javax.servlet.http.HttpServletRequest;

import com.one.project.product.dto.ProductDto;

public interface ProductService {
	
	public void insert(ProductDto dto, HttpServletRequest request);
}