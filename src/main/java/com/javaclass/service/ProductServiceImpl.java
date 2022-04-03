package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.AdminProductDAOImpl;
import com.javaclass.domain.AdminProductVO;



@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private AdminProductDAOImpl productDAO;

	//---------------------------------------------------------------
	public List<AdminProductVO> adminGetProductList(AdminProductVO avo) {
		return productDAO.adminGetProductList(avo);
	}
	
	public void adminInsertProduct(AdminProductVO avo) {
		productDAO.adminInsertProduct(avo);
	}
	
	public void adminUpdateProduct(AdminProductVO avo) {
		productDAO.adminUpdateProduct(avo);
	}

	public void adminDeleteProduct(AdminProductVO avo) {
		productDAO.adminDeleteProduct(avo);
	}

	public AdminProductVO adminGetProduct(AdminProductVO avo) {
		return productDAO.adminGetProduct(avo);
	}
	
}
