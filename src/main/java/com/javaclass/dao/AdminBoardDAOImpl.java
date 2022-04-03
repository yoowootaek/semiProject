package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.AdminBoardVO;

@Repository("boardDAO")
public class AdminBoardDAOImpl implements AdminBoardDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	@Inject
	 SqlSession sqlSession;
	// ----------------------------------------------------------------------
	@Override
	public void adminInsertBoard(AdminBoardVO vo) {
		System.out.println("===> Mybatis adminInsertBoard() 호출");
		mybatis.insert("BoardDAO.adminInsertBoard", vo);

	}

	@Override
	public void adminUpdateBoard(AdminBoardVO vo) {
		System.out.println("===> Mybatis adminInsertBoard() 호출");
		mybatis.insert("BoardDAO.adminUpdateBoard", vo);

	}

	@Override
	public void adminDeleteBoard(AdminBoardVO vo) {
		System.out.println("===> Mybatis adminInsertBoard() 호출");
		mybatis.insert("BoardDAO.adminDeleteBoard", vo);

	}

	@Override
	public AdminBoardVO adminGetBoard(String board_Seq) {
		System.out.println("===> Mybatis adminGetBoard() 호출");
		return sqlSession.selectOne("BoardDAO.adminGetBoard", board_Seq);
	}

	@Override
	public List<AdminBoardVO> adminGetBoardList(AdminBoardVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("BoardDAO.adminGetBoardList", vo);
	}
	
	 @Override
	    public boolean checkBoard(String board_Seq, String board_Password) {
	        boolean result = false;
	        Map<String, String> map = new HashMap<String, String>();
	        map.put("board_Seq", board_Seq);
	        map.put("board_Password", board_Password);
	        int count = sqlSession.selectOne("BoardDAO.checkBoard", map);
	        if(count == 1) result= true;
	        return result;
	    }

}
