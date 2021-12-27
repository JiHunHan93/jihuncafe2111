package com.jihun.cafe.roastingbeans.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.roastingbeans.model.dao.RoastingbeansMapper;

@Service
public class RoastingbeansServiceImpl implements RoastingbeansService {

	private RoastingbeansMapper mapper;
	
	@Autowired
	public RoastingbeansServiceImpl(RoastingbeansMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public MgGoodsDTO selectGoods(int no) {
		
		return mapper.selectGoods(no);
	}
	
}
