package com.javaclass.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.AdminListVO;
import com.javaclass.service.AdminListService;

@Controller
@RequestMapping("/admin")
public class AdminListController {

	
	@Autowired
	private AdminListService mainService;
	//----------------------------------------------------
	
	@RequestMapping("/adminCustomerList.do")
	public void getCustomerList(AdminListVO vo, Model model) {
		// 뷰 페이지 지정 (1) ModelAndView (2) void (3) String
		// 뷰로 데이터 전송 (1) ModelAndView (2) /(3) Model
		model.addAttribute("admin_CustomerList", mainService.adminGetCustomerList(vo));
	}

	// -------------------------------------------------
	@RequestMapping("/adminOrderList.do")
	public void adminGetOrderList(AdminListVO vo, Model model) {
		// 뷰 페이지 지정 (1) ModelAndView (2) void (3) String
		// 뷰로 데이터 전송 (1) ModelAndView (2) /(3) Model
		model.addAttribute("admin_OrderList", mainService.adminGetOrderList(vo));
	}

	// -------------------------------------------------
	@RequestMapping("/adminPaymentList.do")
	public void adminGetPayList(AdminListVO vo, Model model) {
		// 뷰 페이지 지정 (1) ModelAndView (2) void (3) String
		// 뷰로 데이터 전송 (1) ModelAndView (2) /(3) Model
		model.addAttribute("admin_PayList", mainService.adminGetPayList(vo));
	}
    
}
