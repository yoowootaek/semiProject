package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.MyPageOrderModifyDAOImpl;
import com.javaclass.domain.MyPageOrderModifyVO;



	//1.해당 어노테이션 지정
@Service("ordermodifyService")
public class MyPageOrderModifyServiceImpl implements MyPageOrderModifyService{
	
	
	@Autowired
	private MyPageOrderModifyDAOImpl orderModifyDAOImpl;
	
	////주문 입력 *****************************************************************************************
	//public int insertMember(OrderModifyVO vo) {
		
	//	return orderModifyDAOImpl.insertMember(vo);
		
	//}

	//주문 내역 조회 ***************************************************************************************
	public List<MyPageOrderModifyVO> getOrderList() {
		return orderModifyDAOImpl.getOrderList();
	}
	
	//주문내역 db 값 주문상세 보기 불려오기 
	public List<MyPageOrderModifyVO> getOrderLoadList() {
		return orderModifyDAOImpl.getOrderLoadList();
	}
	
	//주문수정버튼 누르면 db 업데이트 
	public void updateMember(MyPageOrderModifyVO vo) {
		orderModifyDAOImpl.updateMember(vo);
		
	}
	
	//주문수정페이지 db 불려옴 
	public MyPageOrderModifyVO selectModify(MyPageOrderModifyVO vo) {
		 return orderModifyDAOImpl.selectModify(vo); 
	}	
	
	//취소/교환/반품 페이지 
	public MyPageOrderModifyVO selectDelete(String vo) {
		return orderModifyDAOImpl.selectDelete(vo);
	}
	
	//cancle 페이지에서 option 값 가져오기
	public MyPageOrderModifyVO getSelect() {
		return orderModifyDAOImpl.getSelect();
	}
	
	//cancleload 페이지에 취소/교환/반품 상태 표시
	public void updateCancle(MyPageOrderModifyVO vo) {
		orderModifyDAOImpl.updateCancle(vo);
		
	}
	
}	
