package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.AdminBoardVO;


public interface AdminBoardDAO {
	
	//----------------------------------------------------
	
	public void adminInsertBoard(AdminBoardVO vo);

	public void adminUpdateBoard(AdminBoardVO vo);

	public void adminDeleteBoard(AdminBoardVO vo);

	public AdminBoardVO adminGetBoard(String board_Seq);

	public List<AdminBoardVO> adminGetBoardList(AdminBoardVO vo);
	
	public boolean checkBoard(String board_Seq, String board_Password);
}	

