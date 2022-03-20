package com.one.project.master.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.baskets.dto.BasketsDto;
import com.one.project.master.dao.MasterDao;
import com.one.project.master.dto.MasterDto;

@Service
public class MasterServiceImpl implements MasterService{
	@Autowired 
	private MasterDao dao;

	@Override
	public void getListMember(ModelAndView mView) {
		List<MasterDto> list2 = dao.getList();
		mView.addObject("list2",list2);
		
	}

	@Override
	public void deleteMaster(int b_num) {
		MasterDto dto = new MasterDto();
		dto.setB_num(b_num);
		dao.delete(dto);
		
	}

	@Override
	public void clear() {
		dao.clear();
		
	}

}
