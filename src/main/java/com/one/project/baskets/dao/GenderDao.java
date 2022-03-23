package com.one.project.baskets.dao;

public interface GenderDao {
	public void minusMan(String p_name);

	public void minusWoman(String p_name);

	public void plusMan(String p_name);

	public void plusWoman(String p_name);

	public void duplicate(String p_name);
}
