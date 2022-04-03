package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.MyPageOrderModifyVO;

public interface MyPageOrderModifyDAO {
    //DB 값 입력
	//public int insertMember(OrderModifyVO vo);
	
    //DB 목록 값 불려오기
	public List<MyPageOrderModifyVO> getOrderList();
	
	//주문내역 db 주문상세보기 페이지 불려오기
	public List<MyPageOrderModifyVO> getOrderLoadList();
	
	//주문수정버튼 누르면 db 업데이트 
    public void updateMember(MyPageOrderModifyVO vo);
    
    //주문상세 내역 불려오기 
    public MyPageOrderModifyVO selectModify(MyPageOrderModifyVO vo);
    
	
}
