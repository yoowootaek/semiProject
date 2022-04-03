package com.javaclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.MyPageOrderModifyVO;
import com.javaclass.service.MyPageOrderModifyService;

//###(1) 해당 어노테이션 지정
@Controller
public class MyPageOrderModifyController {
	
	@Autowired
	private MyPageOrderModifyService ordermodifyServiceImpl;

    //주문수정 페이지 form action 값 지정 *********************************************************
	
	  @RequestMapping("modi.do") public String modi(MyPageOrderModifyVO vo) {
	  ordermodifyServiceImpl.updateMember(vo); 
	  return "orderpage"; 
	  }
	
	//db값 주문내역페이지에 가져오기 ***************************************************************
	@RequestMapping("/myPage/orderpage.do")
	public void getOrderList(MyPageOrderModifyVO vo,Model m) {
		/*
		 * HashMap map= new HashMap(); map.put("searchCondition", searchCondition);
		 * map.put("searchKeyword", searchKeyword);
		 * 
		 * System.out.println("searchCondition:"+searchCondition);
		 * System.out.println("searchKeyword:"+searchKeyword);
		 */
		
		List<MyPageOrderModifyVO> list= ordermodifyServiceImpl.getOrderList();
		m.addAttribute("orderList",list);
		
	}
	
	//주문내역페이지에서 주문상세보기 페이지 db값 가지고 오는거 설정
	@RequestMapping("/myPage/orderload.do")
	public void getOrderLoadList(MyPageOrderModifyVO vo,Model m) {
		List<MyPageOrderModifyVO> list= ordermodifyServiceImpl.getOrderLoadList();
		m.addAttribute("orderloadList",list);
		
	}
	
    //주문수정페이지 수정완성하기 
	@RequestMapping("updateMember.do") 
	public String updateMember(MyPageOrderModifyVO vo) {

		ordermodifyServiceImpl.updateMember(vo); //return "redirect:orderpage.do";
		return "/orderpage.do"; 
	}
	 
	@RequestMapping("saveMember.do")
	public void saveMember(MyPageOrderModifyVO vo) {
		ordermodifyServiceImpl.getOrderList();
		
	}
	
	//주문수정 
	@RequestMapping("/myPage/ordermodify.do")
	public void selectModify(MyPageOrderModifyVO vo, Model m) {
		m.addAttribute("board",ordermodifyServiceImpl.selectModify(vo));
		 
	}
	

}
