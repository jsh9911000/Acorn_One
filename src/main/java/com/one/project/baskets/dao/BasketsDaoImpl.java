package com.one.project.baskets.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.project.baskets.dto.BasketsDto;


@Repository
public class BasketsDaoImpl implements BasketsDao {

	
	@Autowired
	private SqlSession session;



	@Override
	public List<BasketsDto> getList() {
		List<BasketsDto> list=session.selectList("baskets.getList");
		return list;
	}

	@Override
	public void insert(BasketsDto dto) {
		session.insert("baskets.insert", dto);
	}

	@Override
	public void delete(BasketsDto dto) {
		session.delete("baskets.delete", dto);
		
	}

	@Override
	public void pay() {
		session.delete("baskets.pay");
		
	}

	@Override
	public void move() {
		session.insert("baskets.move");
		
	}


}
