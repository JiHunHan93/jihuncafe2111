package com.jihun.cafe.coldbrew.model.dao;

import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.order.model.dto.OrderDTO;

public interface ColdbrewMapper {

	MgGoodsDTO selectGoods(int no);

}
