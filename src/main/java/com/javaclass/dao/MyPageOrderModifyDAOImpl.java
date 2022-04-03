package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.MyPageOrderModifyVO;

@Repository("orderModifyDAO")
public class MyPageOrderModifyDAOImpl implements MyPageOrderModifyDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//DB 값 입력*********************************************************************************
	// public int insertMember(OrderModifyVO vo) {
	//	System.out.println("요청되었습니다.");
	//	return sqlSession.insert("orderMapper.insertMember",vo);
	//}
	
	//DB 값 입력값 불려오기 주문내역페이지에 ***********************************************************
	public List<MyPageOrderModifyVO> getOrderList(){
		System.out.println("요청되었습니다.");
		return sqlSession.selectList("orderMapper.getOrderList");
	} 

	//주문상세보기에 db 값 불려오기 
	public List<MyPageOrderModifyVO> getOrderLoadList(){
		System.out.println("요청되었습니다.");
		return sqlSession.selectList("orderMapper.getOrderList");
	}
	
	//주문수정버튼 누르면 db 업데이트 
	public void updateMember(MyPageOrderModifyVO vo) {
		sqlSession.update("orderMapper.updateMember",vo);
	}
	
	
	//주문내역에서 db값을 주문수정페이지에 값들을 불려옴
	public MyPageOrderModifyVO selectModify(MyPageOrderModifyVO vo) {
	return sqlSession.selectOne("orderMapper.selectModify", vo);
		
	}
	

	
}
