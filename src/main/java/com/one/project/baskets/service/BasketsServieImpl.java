package com.one.project.baskets.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.baskets.dao.BasketsDao;
import com.one.project.baskets.dto.BasketsDto;
@Service
public class BasketsServieImpl implements BasketsService{
	@Autowired 
	private BasketsDao dao;

	
	@Override
	public void getListMember(ModelAndView mView) {
		List<BasketsDto> list = dao.getList();
		mView.addObject("list",list);
	}


	@Override
	public void saveBasket(String p_name,int p_price) {
		//String name=(String)request.getSession().getAttribute("name");
		BasketsDto dto = new BasketsDto();
		dto.setP_name(p_name);
		dto.setP_price(p_price);
		dao.insert(dto);
	}

}