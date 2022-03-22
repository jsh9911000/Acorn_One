package com.one.project.product.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductDto {
	private int pro_num;
	private String pro_name;
	private int pro_price;
	private int remain_stock;
	private int pro_cate;
	private String imagePath;
	private MultipartFile image;
	
	
	public ProductDto() {}


	public ProductDto(int pro_num, String pro_name, int pro_price, int remain_stock, int pro_cate, String imagePath,
			MultipartFile image) {
		super();
		this.pro_num = pro_num;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.remain_stock = remain_stock;
		this.pro_cate = pro_cate;
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


	public int getRemain_stock() {
		return remain_stock;
	}


	public void setRemain_stock(int remain_stock) {
		this.remain_stock = remain_stock;
	}


	public int getPro_cate() {
		return pro_cate;
	}


	public void setPro_cate(int pro_cate) {
		this.pro_cate = pro_cate;
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
