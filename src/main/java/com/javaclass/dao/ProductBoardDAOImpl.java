package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.ProductBoardVO;




@Repository("productBoardDAO")
public class ProductBoardDAOImpl implements ProductBoardDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	
	public void productInsertBoard(ProductBoardVO bao) {
		System.out.println("===> Mybatis productInsertBoard() 호출");
		mybatis.insert("ProductBoardDAO.productInsertBoard", bao);
		
	}

	
	public void productUpdateBoard(ProductBoardVO bao) {
		System.out.println("===> Mybatis productUpdateBoard() 호출");
		mybatis.insert("ProductBoardDAO.productUpdateBoard", bao);
		
	}

	
	public void productDeleteBoard(ProductBoardVO bao) {
		System.out.println("===> Mybatis productDeleteBoard() 호출");
		mybatis.insert("ProductBoardDAO.productDeleteBoard", bao);
		
	}

	
	public ProductBoardVO productgetBoard(ProductBoardVO bao) {
		System.out.println("===> Mybatis productGetBoard() 호출");
		return (ProductBoardVO) mybatis.selectOne("ProductBoardDAO.productgetBoard", bao);
	}

	
	public List<ProductBoardVO> productgetBoardList(ProductBoardVO bao) {
		System.out.println("===> Mybatis productgetBoardList() 호출 : " + bao);
		return mybatis.selectList("ProductBoardDAO.productgetBoardList", bao);
	}

	
}
