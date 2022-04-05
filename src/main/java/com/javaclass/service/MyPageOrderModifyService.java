package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.MyPageOrderModifyVO;

public interface MyPageOrderModifyService {
	
	//주문 입력 *****************************************************************************************
	//public int insertMember(OrderModifyVO vo);
	
	//주문 내역 조회 ***************************************************************************************
	List<MyPageOrderModifyVO> getOrderList();

	//주문내역페이지 db 주문상세보기에 값 가져오기 ********************
	List<MyPageOrderModifyVO> getOrderLoadList();
	
	//주문수정버튼 누르면 db 업데이트 
	void updateMember(MyPageOrderModifyVO vo);
	
	//주문수정페이지 db 불려오기
	public MyPageOrderModifyVO selectModify(MyPageOrderModifyVO vo);
	
	//취소/교환/반품 페이지 
	public MyPageOrderModifyVO selectDelete(String vo);
	
	//cancle 페이지에서 option 값 가져오기
	public MyPageOrderModifyVO getSelect();
	
	//cancleload 페이지에 취소/교환/반품 상태 표시
	void updateCancle(MyPageOrderModifyVO vo);
}
