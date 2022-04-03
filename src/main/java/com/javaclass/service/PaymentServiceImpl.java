package com.javaclass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.PaymentDAO;
import com.javaclass.domain.PaymentVO;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;

	public void insertPayment(PaymentVO vo) {

		paymentDAO.insertPayment(vo);
	}
}
