package com.javaclass.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javaclass.domain.AdminListVO;
import com.javaclass.domain.ProductBoardVO;
import com.javaclass.service.ProductBoardService;
import com.javaclass.service.AdminListService;

@Controller
public class MainController {
	
	
	
	
	@Autowired
	private ProductBoardService productBoardService;

	// localhost:8080/index.do
	@RequestMapping("index.do")
	public String main() {
		return "index";
	}
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	@RequestMapping(value = "/productBoardSave.do")
	public String productInsertBoard(ProductBoardVO bao) throws IOException {
		productBoardService.productInsertBoard(bao);
			return "redirect:blank.do";
	}
	
	// 글 목록 검색
	@RequestMapping("/blank"
			+ ".do")
	public ModelAndView productgetBoardList(ProductBoardVO bao, Model model) {
		//뷰페이지 지정	(1) ModelAndView	(2) void	(3) String
		//뷰로 데이타 전송	(1) ModelAndView (2)/(3) Model
		ModelAndView mav = new ModelAndView();
		List<ProductBoardVO> productgetBoardList = productBoardService.productgetBoardList(bao);
		System.out.println("productgetBoardList : " + productgetBoardList);
//		model.addAttribute("productgetBoardList", list);
//		System.out.println("productgetBoardList.do 요청됨.");
		mav.addObject("productgetBoardList", productgetBoardList);
		mav.setViewName("blank"); 
		return mav;
	}
	
	@RequestMapping("/productgetBoard.do")
	public ModelAndView productgetBoard(ProductBoardVO bao, Model model){
		ModelAndView mav = new ModelAndView();
		System.out.println("ProductBoardVO : " + bao.getBoard_Seq());
		ProductBoardVO board = productBoardService.productgetBoard(bao);
		mav.addObject("board",board);
		mav.setViewName("productgetBoard");
		return mav;
	}
 
	
}
