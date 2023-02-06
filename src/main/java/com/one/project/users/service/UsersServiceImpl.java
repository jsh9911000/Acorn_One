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
	//의존성 객체 주입. => 원래는 new를 통해서 객체를 생성해서 저장해서 사용해야 하는데, @Autowired 어노테이션을 통해서 자동으로 필요한 객체를 주입해준다.
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

		boolean isValid = false;
		
		//클라이언트가 입력한 비밀번호가 DB에 있는지 조회. => 가입한 회원인지 여부를 파악할 수 있다.
		UsersDto result = dao.getData(dto.getId());	//DB로 ID를 보내서 회원의 정보를 가져온다.
		if (result != null) {
			String encodedPwd = result.getPwd();	//DB에서 가져온 정보 중에 비밀번호만 따로 추출한다.
			String inputPwd = dto.getPwd();	//클라이언트가 입력한 비밀번호만 따로 추출한다.
			isValid = BCrypt.checkpw(inputPwd, encodedPwd);	//BCrypt 객체를 이용해서 두 비밀번호가 일치하는 지 확인한다. => 결과는 boolean type으로 return.
		}
		if (isValid) {		//가입한 회원이라면,
			session.setAttribute("id", dto.getId());	//Session 객체를 통해서 로그인. => ID를 Session에 저장.	
			String gender = result.getGender();	//DB에서 클라이언트의 성별만 따로 추출한다.
			session.setAttribute("gender", gender);		//성별을 Session에 저장.
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
