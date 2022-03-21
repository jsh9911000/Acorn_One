package com.one.project.product.service;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;



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
		//파일 크기 -> 다운로드가 없으므로, 여기서는 필요 없다.
		long fileSize = image.getSize();
		
		// webapp/upload 폴더 까지의 실제 경로(서버의 파일 시스템 상에서의 경로)
		String realPath = request.getServletContext().getRealPath("/upload");
		//db 에 저장할 저장할 파일의 상세 경로
		String filePath = realPath + File.separator;
		//디렉토리를 만들 파일 객체 생성
		File upload = new File(filePath);
		if(!upload.exists()) {
			//만약 디렉토리가 존재하지X
			upload.mkdir();//폴더 생성
		}
		//저장할 파일의 이름을 구성한다. -> 우리가 직접 구성해줘야한다.
		String saveFileName = System.currentTimeMillis() + orgFileName;
		
		try {
			//upload 폴더에 파일을 저장한다.
			image.transferTo(new File(filePath + saveFileName));
			System.out.println();	//임시 출력
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		//dto 에 업로드된 파일의 정보를 담는다.
		//-> parameer 로 넘어온 dto 에는 caption, image 가 들어 있었다.
		//-> 추가할 것 : writer(id), imagePath 만 추가로 담아주면 된다.
		//-> num, regdate : db 에 추가하면서 자동으로 들어감
		String id = (String)request.getSession().getAttribute("pro_name");
		dto.setPro_name(id);
		
		int price = (Integer)request.getSession().getAttribute("pro_price");
		dto.setPro_price(price);
		
		int stock = (Integer)request.getSession().getAttribute("remain_stock");
		dto.setRemain_stock(stock);
		
		dto.setImagePath("/upload/" + saveFileName);
		
		//ProductDao 를 이용해서 DB 에 저장하기
		dao.insert2(dto);
	}
		

	

	
	@Override
	public void insert2(ProductDto dto, HttpServletRequest request) {
		//dto : caption, imagePath 가지고 있다.
		//dto 에 Pro_name(id) 추가
		dto.setPro_name((String)request.getSession().getAttribute("pro_name"));
		
		//ProductDao 를 이용해서 DB 에 저장하기
		dao.insert2(dto);
		
	}
		
		


	@Override
	public void update(ProductDto dto) {
		dao.update(dto);
		
	}

	@Override
	public void delete(int pro_num, HttpServletRequest request) {
		dao.delete(pro_num);
		
	}

	@Override
	public void getData(HttpServletRequest request) {
		//수정할 글번호
		int num=Integer.parseInt(request.getParameter("num"));
		//수정할 글의 정보 얻어와서 
		ProductDto dto=dao.getData(num);
		//request 에 담아준다.
		request.setAttribute("dto", dto);
		
	}

	@Override
	public void getList(HttpServletRequest request) {
		ProductDto dto=new ProductDto();
		List<ProductDto> list=dao.getList(dto);
		
		request.setAttribute("list", list);
		
	}


}

