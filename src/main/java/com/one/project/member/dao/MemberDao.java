package com.one.project.member.dao;

import com.one.project.member.dto.MemberDto;

public interface MemberDao {
	//인자로 전달된 아이디가 존재하는지 여부를 리턴하는 메소드.
	public boolean isExist(String inputId);
	//인자로 전달된 가입할 회원의 정보를 DB에 저장하는 메소드.
	public void insert(MemberDto dto);
	//인자로 전달하는 아이디에 해당하는 정보를 리턴하는 메소드.
	public MemberDto getData(String id);
	//개인정보를 수정하는 메소드.
	public void update(MemberDto dto);
	//비밀번호를 수정하는 메소드.
	public void updatePwd(MemberDto dto);
	//회원 정보를 삭제하는 메소드.
	public void delete(String id);
	
}
