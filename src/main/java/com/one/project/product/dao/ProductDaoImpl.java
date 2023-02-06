package com.one.project.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.project.baskets.dto.BasketsDto;
import com.one.project.product.dto.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SqlSession session;

	@Override
	public List<ProductDto> getProductList() {
		List<ProductDto> list = session.selectList("product.getProductList");
		return list;
	}

	@Override
	public void insert2(ProductDto dto) {
		session.insert("product.insert2", dto);
	}

	@Override
	public List<ProductDto> getList(ProductDto dto) {
		return session.selectList("product.getList", dto);
	}

	@Override
	public ProductDto getData(int num) {
		return session.selectOne("product.getData", num);
	}

	@Override
	public void delete(int num) {
		session.delete("product.delete", num);
	}

	@Override
	public void update(ProductDto dto) {
		session.update("product.update", dto);
	}

	@Override
	public void move(String pro_name) {
		session.insert("product.move", pro_name);

	}

	@Override
	public void remove(String pro_name) {
		session.delete("product.remove", pro_name);

	}

	//남자.
	@Override
	public List<ProductDto> getRecoList_Man() {
		List<ProductDto> list = session.selectList("product.getRecoList_man");
		return list;
	}
	
	//여자.
	@Override
	public List<ProductDto> getRecoList_Woman() {
		List<ProductDto> list = session.selectList("product.getRecoList_woman");
		return list;
	}

}
