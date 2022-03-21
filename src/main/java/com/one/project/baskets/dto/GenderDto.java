package com.one.project.baskets.dto;

public class GenderDto {
	private String p_name;
	private int man;
	private int woman;
	
	public GenderDto() {}

	public GenderDto(String p_name, int man, int woman) {
		super();
		this.p_name = p_name;
		this.man = man;
		this.woman = woman;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getMan() {
		return man;
	}

	public void setMan(int man) {
		this.man = man;
	}

	public int getWoman() {
		return woman;
	}

	public void setWoman(int woman) {
		this.woman = woman;
	}

	
}
