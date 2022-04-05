package com.javaclass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.AdminListVO;

@Controller
public class homeController {

	
	//home.jsp 에서 페이지 접속을 위해서 만든 컨트롤러
	// 관리자페이지 접속
	@RequestMapping("admin/adminHome.do")
	public void adminHome() {
	}
	
	//---------------------------------------------------------

	// 마이페이지 접속
	// 1.마이페이지
	@RequestMapping("myPage/myPageHome.do")
	public void myPageHome() {
	}

	// 2.회원정보수정
	@RequestMapping("myPage/myPageUpdate.do")
	public void myPageUpdate() {
	}

	// 3.회원탈퇴
	@RequestMapping("myPage/myPageLeave.do")
	public void myPageLeave() {
	}

	// 4.마이홈
	@RequestMapping("myPage/myhome.do")
	public void myhome() {
	}

	// 5.주문페이지
	//@RequestMapping("myPage/orderpage.do")
	//public void orderpage() {
	//}

	// 6.주문상세보기
	//@RequestMapping("myPage/orderload.do")
	//public void orderload() {
	//}

	// 7.취소/교환/반품 페이지
	//@RequestMapping("myPage/canclepage.do")
	//public void canclepage() {
	//}
	// 8.주문수정 페이지
	//@RequestMapping("myPage//ordermodify.do")
	//public void ordermodify() {
	//}
	
	//9.취소/교환/반품 상태표시 페이지
	@RequestMapping("myPage/cancleload.do")
	public void cancleload() {
		
	}
	
	//---------------------------------------------------------
	// 홈 페이지 접속
	@RequestMapping("homePage/blank.do")
	public void blank() {
	}
	@RequestMapping("homePage/product.do")
	public void product() {
	}
	@RequestMapping("homePage/productDeleteBoard.do")
	public void productDeleteBoard() {
	}
	@RequestMapping("homePage/productgetBoard.do")
	public void productgetBoard() {
	}
	@RequestMapping("homePage/productgetBoardList.do")
	public void productgetBoardList() {
	}
	@RequestMapping("homePage/productInsertBoard.do")
	public void productInsertBoard() {
	}
	@RequestMapping("homePage/productUpdateBoard.do")
	public void productUpdateBoard() {
	}
	@RequestMapping("homePage/store.do")
	public void store() {
	}

}
