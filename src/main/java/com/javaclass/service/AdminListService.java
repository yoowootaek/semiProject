package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.AdminListVO;

public interface AdminListService {
	List<AdminListVO> adminGetCustomerList(AdminListVO vo);
	// ------------------------------------------------

	List<AdminListVO> adminGetOrderList(AdminListVO vo);
	// ------------------------------------------------
	
	List<AdminListVO> adminGetPayList(AdminListVO vo);
}

