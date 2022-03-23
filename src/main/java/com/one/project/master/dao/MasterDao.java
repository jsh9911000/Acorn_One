package com.one.project.master.dao;

import java.util.List;

import com.one.project.master.dto.MasterDto;

public interface MasterDao {
	public List<MasterDto> getList();

	public void delete2(MasterDto dto);

	public void clear();
}
