package com.one.project.product.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.one.project.product.dto.ProductDto;

public interface ProductService {
	public void saveImage(ProductDto dto, HttpServletRequest request);
	public void insert2(ProductDto dto, HttpServletRequest request);
	public List<ProductDto> getProductList();
}
