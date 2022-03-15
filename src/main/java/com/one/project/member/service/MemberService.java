package com.one.project.member.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.member.dto.MemberDto;

public interface MemberService {
	public Map<String, Object> isExistId(String inputId);
	public void addUser(MemberDto dto);
	public void loginProcess(MemberDto dto, HttpSession session);
	public void getInfo(HttpSession session, ModelAndView mView);
	public void updateUserPwd(HttpSession session, MemberDto dto, ModelAndView mView);
	public void updateUser(MemberDto dto, HttpSession session);
	public void deleteUser(HttpSession session, ModelAndView mView);
}
