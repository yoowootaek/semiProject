package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.AdminListVO;



public interface AdminListDAO {

	//----------------------------------------------------
	
		public List<AdminListVO> adminGetCustomerList(AdminListVO vo);
		//----------------------------------------------------
		
		public List<AdminListVO> adminGetOrderList(AdminListVO vo);
		//----------------------------------------------------
			
		public List<AdminListVO> adminGetPayList(AdminListVO vo);

	

}	

