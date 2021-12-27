package com.jihun.cafe.coldbrew.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jihun.cafe.coldbrew.model.dao.ColdbrewMapper;
import com.jihun.cafe.goods.model.dto.MgGoodsDTO;

@Service
public class ColdbrewServiceImpl implements ColdbrewService {

	private ColdbrewMapper mapper;
	
	@Autowired
	public ColdbrewServiceImpl(ColdbrewMapper mapper) {
		this.mapper = mapper;
	}

	/* 상세 상품 조회 */
	@Override
	public MgGoodsDTO selectGoods(int no) {
		
		return mapper.selectGoods(no);
	}
	
}
