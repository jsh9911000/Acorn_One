package com.one.project.baskets.dao;

import java.util.List;

import com.one.project.baskets.dto.BasketsDto;

public interface BasketsDao {
	public List<BasketsDto> getList();
	public void insert(BasketsDto dto);
	public void delete(BasketsDto dto);
	public void pay();
}
