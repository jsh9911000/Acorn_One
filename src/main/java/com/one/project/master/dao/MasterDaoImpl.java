package com.one.project.master.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.one.project.master.dto.MasterDto;

@Repository
public class MasterDaoImpl implements MasterDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<MasterDto> getList() {
		List<MasterDto> list2=session.selectList("master.getList");
		return list2;
	}

	@Override
	public void delete2(MasterDto dto) {
		session.delete("master.delete2", dto);
	}

	@Override
	public void clear() {
		session.delete("master.clear");
		
	}




}
