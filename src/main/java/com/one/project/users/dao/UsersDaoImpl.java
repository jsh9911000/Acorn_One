package com.one.project.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.project.users.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public boolean isExist(String inputId) {
		String id=session.selectOne("member.isExist", inputId);
		if(id==null) {
			return false;
		}else {
			return true;
		}
	}

	@Override
	public void insert(UsersDto dto) {
		
		session.insert("member.insert", dto);
	}

	@Override
	public UsersDto getData(String id) {
		
		return session.selectOne("member.getDate", id);
	}

	@Override
	public void update(UsersDto dto) {
		
		session.update("member.update", dto);
	}

	@Override
	public void updatePwd(UsersDto dto) {
		
		session.update("member.pwdUpdate", dto);
	}

	@Override
	public void delete(String id) {
		
		session.delete("member.delete", id);
	}
	
}
