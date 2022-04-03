package com.javaclass.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.AccountVO;
import com.javaclass.service.AccountService;

@Controller
@RequestMapping("/signupLogin")
public class AccountController {

	
	
	@Autowired
	private AccountService accountServiceImpl;
	
	//로그인
		@RequestMapping("/login.do")
		public void login(AccountVO vo, HttpSession session) {
			
		}
		
	//회원가입
	@RequestMapping("/signup.do")
	public void signup(AccountVO vo) {
	}
	
	
	@RequestMapping("/insertAccount.do")
	public void insertAccount(AccountVO vo) {
		accountServiceImpl.insertAccount(vo);
	}
	
	
}
