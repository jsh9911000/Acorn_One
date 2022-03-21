package com.one.project.product.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductDto {
	private int pro_num;
	private String pro_name;
	private int pro_price;
	private int man_sell;
	private int woman_sell;
	private int remain_stock;
	private String imagePath;
	private MultipartFile image;
	
	public ProductDto() {}

	public ProductDto(int pro_num, String pro_name, int pro_price, int man_sell, int woman_sell, int remain_stock,
			String imagePath, MultipartFile image) {
		super();
		this.pro_num = pro_num;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.man_sell = man_sell;
		this.woman_sell = woman_sell;
		this.remain_stock = remain_stock;
		this.imagePath = imagePath;
		this.image = image;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public int getPro_price() {
		return pro_price;
	}

	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}

	public int getMan_sell() {
		return man_sell;
	}

	public void setMan_sell(int man_sell) {
		this.man_sell = man_sell;
	}

	public int getWoman_sell() {
		return woman_sell;
	}

	public void setWoman_sell(int woman_sell) {
		this.woman_sell = woman_sell;
	}

	public int getRemain_stock() {
		return remain_stock;
	}

	public void setRemain_stock(int remain_stock) {
		this.remain_stock = remain_stock;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	
}
