package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.AdminBoardDAOImpl;
import com.javaclass.domain.AdminBoardVO;



@Service("boardService")
public class AdminBoardServiceImpl implements AdminBoardService {
	@Autowired
	private AdminBoardDAOImpl boardDAO;

	public void adminInsertBoard(AdminBoardVO vo) {
		boardDAO.adminInsertBoard(vo);
	}

	public void adminUpdateBoard(AdminBoardVO vo) {
		boardDAO.adminUpdateBoard(vo);
	}

	public void adminDeleteBoard(AdminBoardVO vo) {
		boardDAO.adminDeleteBoard(vo);
	}

	public AdminBoardVO adminGetBoard(String board_Seq) {
		return boardDAO.adminGetBoard(board_Seq);
	}

	public List<AdminBoardVO> adminGetBoardList(AdminBoardVO vo) {
		return boardDAO.adminGetBoardList(vo);
	}
	
    public boolean checkBoard(String board_Seq, String board_Password) {
        return boardDAO.checkBoard(board_Seq, board_Password);
    }
}
