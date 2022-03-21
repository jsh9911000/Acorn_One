package com.one.project.product.dao;

import java.util.List;

import com.one.project.product.dto.ProductDto;

public interface ProductDao {
	
	public List<ProductDto> getProductList();
	
	public void insert2(ProductDto dto);
}
