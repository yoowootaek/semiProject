package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.AdminListDAOImpl;
import com.javaclass.domain.AdminListVO;

@Service("mainService")
public class AdminListServiceImpl implements AdminListService {
	@Autowired
	private AdminListDAOImpl mainDAO;
		
	public List<AdminListVO> adminGetCustomerList(AdminListVO vo) {
		return mainDAO.adminGetCustomerList(vo);
	}
	//---------------------------------------------------------------
	public List<AdminListVO> adminGetOrderList(AdminListVO vo) {
		return mainDAO.adminGetOrderList(vo);
	}
	//---------------------------------------------------------------
	public List<AdminListVO> adminGetPayList(AdminListVO vo) {
		return mainDAO.adminGetPayList(vo);
	}
}
