package com.one.project.product.dao;

import java.util.List;

import com.one.project.product.dto.ProductDto;

public interface ProductDao {

	public List<ProductDto> getProductList();

	public void insert2(ProductDto dto);

	public List<ProductDto> getList(ProductDto dto);

	public ProductDto getData(int num);

	public void delete(int num);

	public void update(ProductDto dto);

	public void move(String pro_name);

	public void remove(String pro_name);

	public List<ProductDto> getRecoList_Man();

	public List<ProductDto> getRecoList_Woman();

}
