package com.one.project.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.one.project.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

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
	public void insert(MemberDto dto) {
		
		session.insert("member.insert", dto);
	}

	@Override
	public MemberDto getData(String id) {
		
		return session.selectOne("member.getDate", id);
	}

	@Override
	public void update(MemberDto dto) {
		
		session.update("member.update", dto);
	}

	@Override
	public void updatePwd(MemberDto dto) {
		
		session.update("member.pwdUpdate", dto);
	}

	@Override
	public void delete(String id) {
		
		session.delete("member.delete", id);
	}
	
}
