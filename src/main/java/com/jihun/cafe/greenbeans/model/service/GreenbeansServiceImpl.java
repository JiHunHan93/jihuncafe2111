package com.jihun.cafe.greenbeans.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.greenbeans.model.dao.GreenbeansMapper;

@Service
public class GreenbeansServiceImpl implements GreenbeansService {
	
	private GreenbeansMapper mapper;
	
	@Autowired
	public GreenbeansServiceImpl(GreenbeansMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public MgGoodsDTO selectGoods(int no) {
		
		return mapper.selectGoods(no);
	}
	
}
