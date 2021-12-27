package com.jihun.cafe.cannedcoffee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jihun.cafe.cannedcoffee.model.dao.CannedcoffeeMapper;
import com.jihun.cafe.goods.model.dto.MgGoodsDTO;

@Service
public class CannedcoffeeServiceImpl implements CannedcoffeeService {
	
	private CannedcoffeeMapper mapper;
	
	@Autowired
	public CannedcoffeeServiceImpl(CannedcoffeeMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public MgGoodsDTO selectGoods(int no) {
		
		return mapper.selectGoods(no);
	}
	
}
