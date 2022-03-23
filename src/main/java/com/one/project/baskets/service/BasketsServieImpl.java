package com.one.project.baskets.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.baskets.dao.BasketsDao;
import com.one.project.baskets.dto.BasketsDto;

@Service
public class BasketsServieImpl implements BasketsService {
	@Autowired
	private BasketsDao dao;

	@Override
	public void getListMember(ModelAndView mView) {
		List<BasketsDto> list = dao.getList();
		mView.addObject("list", list);
	}

	@Override
	public void saveBasket(String p_name, int p_price, String u_name, String gender) {

		BasketsDto dto = new BasketsDto();
		dto.setP_name(p_name);
		dto.setP_price(p_price);
		dto.setU_name(u_name);
		dto.setGender(gender);
		dao.insert(dto);
	}

	@Override
	public void deleteBasket(int b_num) {
		BasketsDto dto = new BasketsDto();
		dto.setB_num(b_num);
		dao.delete(dto);
	}

	@Override
	public void payBasket() {
		dao.pay();

	}

	@Override
	public void moveBasket() {
		dao.move();

	}

}
