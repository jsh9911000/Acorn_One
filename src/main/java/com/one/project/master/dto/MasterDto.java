package com.one.project.master.dto;

public class MasterDto {
	private String u_name;
	private String p_name;
	private int p_price;
	private int b_num;
	private String gender;

	public MasterDto() {
	}

	public MasterDto(String u_name, String p_name, int p_price, int b_num, String gender) {
		super();
		this.u_name = u_name;
		this.p_name = p_name;
		this.p_price = p_price;
		this.b_num = b_num;
		this.gender = gender;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
