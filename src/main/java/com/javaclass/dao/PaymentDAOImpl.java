package com.javaclass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.PaymentVO;

@Repository("paymentDAO")
public class PaymentDAOImpl implements PaymentDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertPayment(PaymentVO vo) {
		System.out.println("===> Mybatis insertPayment() 호출");
		mybatis.insert("PaymentDAO.insertPayment", vo);
	}
}
