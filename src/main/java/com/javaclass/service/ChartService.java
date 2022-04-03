package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.ChartVO;

public interface ChartService {

	public List<ChartVO> countBoard(ChartVO vo) throws Exception;
}
