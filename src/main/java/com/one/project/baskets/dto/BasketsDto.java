package com.one.project.baskets.dto;

public class BasketsDto {

	private int p_num;
	private String p_name;
	private int p_price;
	private int b_num;
	private String u_name;
	private String gender;

	public BasketsDto() {
	}

	public BasketsDto(int p_num, String p_name, int p_price, int b_num, String u_name, String gender) {
		super();
		this.p_num = p_num;
		this.p_name = p_name;
		this.p_price = p_price;
		this.b_num = b_num;
		this.u_name = u_name;
		this.gender = gender;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
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

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
