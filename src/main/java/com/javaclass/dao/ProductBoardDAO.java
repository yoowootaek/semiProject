package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.ProductBoardVO;

public interface ProductBoardDAO {

	public void productInsertBoard(ProductBoardVO bao);
	
	public void productUpdateBoard(ProductBoardVO bao);
	
	public void productDeleteBoard(ProductBoardVO bao);
	
	public ProductBoardVO productgetBoard(ProductBoardVO bao);
	
	public List<ProductBoardVO> productgetBoardList(ProductBoardVO bao);
	
}
