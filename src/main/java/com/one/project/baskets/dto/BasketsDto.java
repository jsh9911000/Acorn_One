package com.one.project.baskets.dto;

public class BasketsDto {

	private int u_num;
	private int p_num;
	private String p_name;
	private int p_price;
	

	public BasketsDto() {}


	public BasketsDto(int u_num, int p_num, String p_name, int p_price) {
		super();
		this.u_num = u_num;
		this.p_num = p_num;
		this.p_name = p_name;
		this.p_price = p_price;
	}


	public int getU_num() {
		return u_num;
	}


	public void setU_num(int u_num) {
		this.u_num = u_num;
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
	
	
}
