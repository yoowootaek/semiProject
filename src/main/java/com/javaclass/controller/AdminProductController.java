package com.javaclass.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.AccountVO;
import com.javaclass.domain.AdminProductVO;
import com.javaclass.service.AccountService;
import com.javaclass.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminProductController {

	
	@Autowired
	private ProductService productService;
	
	// -------------------------------------------------
		// 관리자 상품 작성
		@RequestMapping("/adminProductRegister.do")
		public void registerProduct(){
		}
		
		// 관리자 상품 저장
		@RequestMapping(value = "/adminProductSave.do")
		public String insertProduct(AdminProductVO vo) throws IOException {
			productService.adminInsertProduct(vo);
			return "redirect:adminProductList.do";
		}
		// 관리자 상품 목록
		@RequestMapping("/adminProductList.do")
		public void GetProductList(AdminProductVO vo, Model model) {
			// 뷰 페이지 지정 (1) ModelAndView (2) void (3) String
			// 뷰로 데이터 전송 (1) ModelAndView (2) /(3) Model
			model.addAttribute("admin_ProductList", productService.adminGetProductList(vo));
		}

		// 관리자 상품 상세 조회
		@RequestMapping("/adminProductChange.do")
		public void getProduct(AdminProductVO vo, Model m) {
			m.addAttribute("admin_Product", productService.adminGetProduct(vo));
		}

		// 관리자 상품 삭제
		@RequestMapping("/adminProductDelete.do")
		public String deleteProduct(AdminProductVO vo) {
			productService.adminDeleteProduct(vo);
			return "redirect:adminProductList.do";
		}

		// 관리자 상품 수정
		@RequestMapping("/adminProductUpdate.do")
		public String updateProduct(AdminProductVO vo) {
			productService.adminUpdateProduct(vo);
			return "redirect:adminProductList.do";
		}

	
}
