package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.ProductBoardDAOImpl;
import com.javaclass.domain.ProductBoardVO;



@Service("productBoardService")
public class ProductBoardServiceImpl implements ProductBoardService {
	@Autowired
	private ProductBoardDAOImpl productBoardDAO;

	public void productInsertBoard(ProductBoardVO bao) {
		productBoardDAO.productInsertBoard(bao);
	}

	public void productUpdateBoard(ProductBoardVO bao) {
		productBoardDAO.productUpdateBoard(bao);
	}

	public void productDeleteBoard(ProductBoardVO bao) {
		productBoardDAO.productDeleteBoard(bao);
	}

	public ProductBoardVO productgetBoard(ProductBoardVO bao) {
		return productBoardDAO.productgetBoard(bao);
	}

	public List<ProductBoardVO> productgetBoardList(ProductBoardVO bao) {
		return productBoardDAO.productgetBoardList(bao);
	}

}
