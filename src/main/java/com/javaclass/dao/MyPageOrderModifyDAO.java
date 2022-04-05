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
    
    //주문취소/반품/교환 페이지
    public MyPageOrderModifyVO selectDelete(String vo);
    
  //cancle 페이지에서 option 값 가져오기
    public MyPageOrderModifyVO getSelect();
    
    //cancleload 페이지에 취소/교환/반품 상태 표시
    public void updateCancle(MyPageOrderModifyVO vo);
}
