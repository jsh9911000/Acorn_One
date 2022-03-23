package com.one.project.product.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.one.project.product.dao.ProductDao;

import com.one.project.product.dto.ProductDto;
import com.one.project.product.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao dao;
	
	
	public void saveImage(ProductDto dto, HttpServletRequest request) {
		//업로드된 파일의 정보를 가지고 있는 MultipartFile 객체의 참조값을 얻어오기
		MultipartFile image = dto.getImage();
		//원본 파일명 -> 저장할 파일 이름 만들기위해서 사용됨
		String orgFileName = image.getOriginalFilename();
		
		
		// webapp/food 폴더 까지의 실제 경로(서버의 파일 시스템 상에서의 경로)
		String realPath = request.getServletContext().getRealPath("/food");
		//db 에 저장할 저장할 파일의 상세 경로
		String filePath = realPath + File.separator;
		//디렉토리를 만들 파일 객체 생성
		File food = new File(filePath);
		if(!food.exists()) {
			//만약 디렉토리가 존재하지X
			food.mkdir();//폴더 생성
		}
		
		try {
			image.transferTo(new File(filePath + orgFileName));
			System.out.println();	//임시 출력
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		dto.setImagePath("../food/" + orgFileName);
		
		//ProductDao 를 이용해서 DB 에 저장하기
		dao.insert2(dto);
		String pro_name = dto.getPro_name();
		dao.move(pro_name);
		
	}
		

	@Override
	public List<ProductDto> getProductList() {
		return dao.getProductList();
	}	
		


	@Override
	public void update(ProductDto dto) {
		dao.update(dto);
		
	}

	@Override
	public void delete(int num) {

		dao.delete(num);
		
	}

	@Override
	public void getList(HttpServletRequest request) {
		ProductDto dto=new ProductDto();
		List<ProductDto> list=dao.getList(dto);
		
		request.setAttribute("list", list);
		
	}


	@Override
	public void getData(int num, ModelAndView mView) {
		ProductDto dto=dao.getData(num);
		mView.addObject("dto", dto);
		
	}


	@Override
	public void remove(String pro_name) {
		dao.remove(pro_name);
		
	}


	@Override
	public void insert2(ProductDto dto, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<ProductDto> recoList_Man() {

		return dao.getRecoList_Man();
	}


	@Override
	public List<ProductDto> recoList_Woman() {

		return dao.getRecoList_Woman();
	}


}

