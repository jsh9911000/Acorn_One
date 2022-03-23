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
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao dao;

	public void saveImage(ProductDto dto, HttpServletRequest request) {

		MultipartFile image = dto.getImage();

		String orgFileName = image.getOriginalFilename();

		String realPath = request.getServletContext().getRealPath("/food");

		String filePath = realPath + File.separator;

		File food = new File(filePath);
		if (!food.exists()) {

			food.mkdir();
		}

		try {
			image.transferTo(new File(filePath + orgFileName));
			System.out.println(); // 임시 출력
		} catch (Exception e) {
			e.printStackTrace();
		}

		dto.setImagePath("../food/" + orgFileName);

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
		ProductDto dto = new ProductDto();
		List<ProductDto> list = dao.getList(dto);

		request.setAttribute("list", list);

	}

	@Override
	public void getData(int num, ModelAndView mView) {
		ProductDto dto = dao.getData(num);
		mView.addObject("dto", dto);

	}

	@Override
	public void remove(String pro_name) {
		dao.remove(pro_name);

	}

	@Override
	public void insert2(ProductDto dto, HttpServletRequest request) {

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
