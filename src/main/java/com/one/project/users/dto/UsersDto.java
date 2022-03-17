package com.one.project.users.dto;

public class UsersDto {
	private String id;
	private String pwd;
	private String email;
	private String newPwd;
	private String regdate;
	private String name;
	private String gender;
	
	public UsersDto() {}

	public UsersDto(String id, String pwd, String email, String newPwd, String regdate, String name, String gender) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.newPwd = newPwd;
		this.regdate = regdate;
		this.name = name;
		this.gender = gender;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	
}