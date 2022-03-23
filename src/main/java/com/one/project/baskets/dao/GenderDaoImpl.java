package com.one.project.baskets.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GenderDaoImpl implements GenderDao {

	@Autowired
	private SqlSession session;

	@Override
	public void minusMan(String p_name) {
		session.update("gender.minusman", p_name);

	}

	@Override
	public void plusMan(String p_name) {
		session.update("gender.plusman", p_name);

	}

	@Override
	public void minusWoman(String p_name) {
		session.update("gender.minuswoman", p_name);

	}

	@Override
	public void plusWoman(String p_name) {
		session.update("gender.pluswoman", p_name);

	}

	@Override
	public void duplicate(String p_name) {
		session.update("gender.duplicate", p_name);

	}

}
