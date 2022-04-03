package com.javaclass.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.PaymentVO;
import com.javaclass.service.PaymentService;

@Controller
@RequestMapping("/paymentOrder")
public class PaymentController {

	@Autowired // DI 개념
	private PaymentService paymentService;

	@RequestMapping("savePayment.do")
	public String insertPayment(PaymentVO vo) {
		paymentService.insertPayment(vo);

		return "redirect:payment.do";
	}

	@RequestMapping("payment.do")
	public void Payment() {

		System.out.println("정상작동");
	}

	@RequestMapping("testpay.do")
	public void testpay() {

		System.out.println("정상작동");
	}

	@RequestMapping("payment_sucess.do")
	public void payment_sucess() {

		System.out.println("정상작동");
	}

	@RequestMapping("payment_fail.do")
	public void payment_fail() {

		System.out.println("정상작동");
	}

	@RequestMapping("refund.do")
	public void refund() {

		System.out.println("정상작동");
	}
}
