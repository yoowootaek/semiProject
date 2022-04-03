package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.AdminProductVO;

public interface ProductService {

	
	// ------------------------------------------------
	
	List<AdminProductVO> adminGetProductList(AdminProductVO avo);

	void adminInsertProduct(AdminProductVO avo);

	
	void adminUpdateProduct(AdminProductVO avo);

	
	void adminDeleteProduct(AdminProductVO avo);

	
	AdminProductVO adminGetProduct(AdminProductVO avo);

	

}
