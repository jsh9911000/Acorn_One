package com.one.project.product.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.project.product.dto.ProductDto;


@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(ProductDto dto) {
		session.insert("product.insert", dto);
	}
	
}
