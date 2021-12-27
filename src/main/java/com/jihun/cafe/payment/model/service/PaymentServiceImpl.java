package com.jihun.cafe.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.member.model.dao.MemberMapper;
import com.jihun.cafe.member.model.dto.MemberDTO;
import com.jihun.cafe.member.model.dto.MemberPointDTO;
import com.jihun.cafe.order.model.dto.OrderAddressDTO;
import com.jihun.cafe.order.model.dto.OrderDTO;
import com.jihun.cafe.order.model.dto.OrderDeliveryDTO;
import com.jihun.cafe.order.model.dto.OrderGoodsDTO;
import com.jihun.cafe.payment.model.dao.PaymentMapper;
import com.jihun.cafe.payment.model.dto.PaymentDTO;
import com.jihun.cafe.payment.model.dto.PaymentDivisionDTO;

@Service
public class PaymentServiceImpl implements PaymentService {

	private PaymentMapper mapper;
	private MemberMapper memMapper;
	
	@Autowired
	public PaymentServiceImpl(PaymentMapper mapper, MemberMapper memMapper) {
		this.mapper = mapper;
		this.memMapper = memMapper;
	}

	/* 상세 상품 조회 */
	@Override
	public MgGoodsDTO selectGoods(int no) {
		
		return mapper.selectGoods(no);
	}

	@Override
	public MemberDTO viewMemberDetailInfo(String username) {
		
		return memMapper.viewMemberDetailInfo(username);
	}
	
	/* 주문 테이블 Insert */
	@Override
	public int insertOrder(OrderDTO order) {
		
		return mapper.insertOrder(order);
	}
	
	/* 주문 상품 테이블 Insert */
	@Override
	public int insertOrderGoods(OrderGoodsDTO orderGoods) {
		
		return mapper.insertOrderGoods(orderGoods);
	}

	/* 주문 배송 테이블 Insert */
	@Override
	public int insertOrderDelivery(OrderDeliveryDTO orderDelivery) {
		
		return mapper.insertOrderDelivery(orderDelivery);
	}

	/* 주문 상세 주소 테이블 Insert */
	@Override
	public int insertOrderAddress(OrderAddressDTO orderAddress) {
		
		return mapper.insertOrderAddress(orderAddress);
	}

	/* 결제 테이블 Insert */
	@Override
	public int insertOrderPayment(PaymentDTO payment) {
		
		return mapper.insertOrderPayment(payment);
	}

	@Override
	public int insertOrderPaymentDivision(PaymentDivisionDTO paymentDivision) {
		
		return mapper.insertOrderPaymentDivision(paymentDivision);
	}

	@Override
	public int insertMemberPointInfo(MemberPointDTO point) {
		
		int insertMemberPoint = mapper.insertMemberPoint(point);
		int updateMemberColumn = mapper.updateMemberColumn(point);
		int insertMemberModify = mapper.insertMemberModify(point);
		
		return insertMemberPoint + updateMemberColumn + insertMemberModify;
	}
	
}
