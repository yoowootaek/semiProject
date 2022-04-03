package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.ProductBoardVO;

public interface ProductBoardService {
	// CRUD 기능의 메소드 구현
			// 글 등록
			void productInsertBoard(ProductBoardVO bao);

			// 글 수정
			void productUpdateBoard(ProductBoardVO bao);

			// 글 삭제
			void productDeleteBoard(ProductBoardVO bao);

			// 글 상세 조회
			ProductBoardVO productgetBoard(ProductBoardVO bao);

			// 글 목록 조회
			List<ProductBoardVO> productgetBoardList(ProductBoardVO bao);
}
