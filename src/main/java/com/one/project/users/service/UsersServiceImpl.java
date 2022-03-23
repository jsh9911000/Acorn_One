package com.one.project.users.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.users.dao.UsersDao;
import com.one.project.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersDao dao;

	@Override
	public Map<String, Object> isExistId(String inputId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("isExist", dao.isExist(inputId));
		return map;
	}

	@Override
	public void addUser(UsersDto dto) {
		String pwd = dto.getPwd();
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encodePwd = encoder.encode(pwd);
		dto.setPwd(encodePwd);
		dao.insert(dto);
	}

	@Override
	public void loginProcess(UsersDto dto, HttpSession session) {
		// 입력한 정보가 맞는여부
		boolean isValid = false;

		// 1. 로그인 폼에 입력한 아이디를 이용해서 해당 정보를 select 해 본다.
		UsersDto result = dao.getData(dto.getId());
		if (result != null) {// 만일 존재하는 아이디 라면
			// 비밀번호가 일치하는지 확인한다.
			String encodedPwd = result.getPwd(); // DB 에 저장된 암호화된 비밀번호
			String inputPwd = dto.getPwd(); // 로그인폼에 입력한 비밀번호
			// Bcrypt 클래스의 static 메소드를 이용해서 일치 여부를 얻어낸다.
			isValid = BCrypt.checkpw(inputPwd, encodedPwd);
		}

		if (isValid) {// 만일 유효한 정보이면
			// 로그인 처리를 한다.
			session.setAttribute("id", dto.getId());
			String gender = result.getGender();
			session.setAttribute("gender", gender);

		}
	}

	@Override
	public void getInfo(HttpSession session, ModelAndView mView) {
		String id = (String) session.getAttribute("id");
		UsersDto dto = dao.getData(id);
		mView.addObject("dto", dto);
	}

	@Override
	public void updateUserPwd(HttpSession session, UsersDto dto, ModelAndView mView) {
		String id = (String) session.getAttribute("id");
		UsersDto resultDto = dao.getData(id);
		String encodedPwd = resultDto.getPwd();
		String inputPwd = dto.getPwd();
		boolean isValid = BCrypt.checkpw(inputPwd, encodedPwd);
		if (isValid) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String encodedNewPwd = encoder.encode(dto.getNewPwd());
			dto.setNewPwd(encodedNewPwd);
			dto.setId(id);
			dao.updatePwd(dto);
			session.removeAttribute("id");
		}
		mView.addObject("isSuccess", isValid);
		mView.addObject("id", id);
	}

	@Override
	public void updateUser(UsersDto dto, HttpSession session) {
		String id = (String) session.getAttribute("id");
		dto.setId(id);
		dao.update(dto);
	}

	@Override
	public void deleteUser(HttpSession session, ModelAndView mView) {
		String id = (String) session.getAttribute("id");
		dao.delete(id);
		session.removeAttribute("id");
		mView.addObject("id", id);
	}

}
