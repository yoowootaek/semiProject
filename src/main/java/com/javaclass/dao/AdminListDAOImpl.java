package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.AdminListVO;


@Repository("mainDAO")
public class AdminListDAOImpl implements AdminListDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// ----------------------------------------------------------------------

	@Override
	public List<AdminListVO> adminGetCustomerList(AdminListVO avo) {
		System.out.println("===> Mybatis adminGetCustomerList() 호출");
		return mybatis.selectList("MainDAO.adminGetCustomerList", avo);
	}

	// ----------------------------------------------------------------------

	@Override
	public List<AdminListVO> adminGetOrderList(AdminListVO avo) {
		System.out.println("===> Mybatis adminGetOrderList() 호출");
		return mybatis.selectList("MainDAO.adminGetOrderList", avo);
	}

	// ----------------------------------------------------------------------

	@Override
	public List<AdminListVO> adminGetPayList(AdminListVO avo) {
		System.out.println("===> Mybatis adminGetPayList() 호출");
		return mybatis.selectList("MainDAO.adminGetPayList", avo);
	}

	// ----------------------------------------------------------------------
	


}
