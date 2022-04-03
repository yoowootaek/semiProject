package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.AdminBoardVO;

public interface AdminBoardService {

	// 글 등록
	void adminInsertBoard(AdminBoardVO vo);

	// 글 수정
	void adminUpdateBoard(AdminBoardVO vo);

	// 글 삭제
	void adminDeleteBoard(AdminBoardVO vo);

	// 글 상세 조회
	AdminBoardVO adminGetBoard(String board_Seq);

	// 글 목록 조회
	List<AdminBoardVO> adminGetBoardList(AdminBoardVO vo);
	
	public boolean checkBoard(String board_Seq, String board_Password);

}
