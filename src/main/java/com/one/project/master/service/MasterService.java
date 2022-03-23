package com.one.project.master.service;

import org.springframework.web.servlet.ModelAndView;

public interface MasterService {
	public void getListMember(ModelAndView mView);

	public void deleteMaster(int b_num);

	public void clear();
}
