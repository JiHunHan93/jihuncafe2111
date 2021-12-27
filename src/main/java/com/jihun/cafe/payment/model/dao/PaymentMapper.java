package com.jihun.cafe.payment.model.dao;

import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.member.model.dto.MemberPointDTO;
import com.jihun.cafe.order.model.dto.OrderAddressDTO;
import com.jihun.cafe.order.model.dto.OrderDTO;
import com.jihun.cafe.order.model.dto.OrderDeliveryDTO;
import com.jihun.cafe.order.model.dto.OrderGoodsDTO;
import com.jihun.cafe.payment.model.dto.PaymentDTO;
import com.jihun.cafe.payment.model.dto.PaymentDivisionDTO;

public interface PaymentMapper {

	MgGoodsDTO selectGoods(int no);
	
	/* 주문 테이블 Insert */
	int insertOrder(OrderDTO order);

	/* 주문 상품 테이블 Insert */
	int insertOrderGoods(OrderGoodsDTO orderGoods);
	
	/* 주문 배송 테이블 Insert */
	int insertOrderDelivery(OrderDeliveryDTO orderGoods);

	/* 주문 상세 주소 테이블 Insert */
	int insertOrderAddress(OrderAddressDTO orderGoods);

	/* 결제 테이블 Insert */
	int insertOrderPayment(PaymentDTO orderGoods);

	/* 결제 구분 테이블 Insert */
	int insertOrderPaymentDivision(PaymentDivisionDTO paymentDivision);

	/* 포인트 사용 시 정보&이력 변경 업데이트 */
	int insertMemberPoint(MemberPointDTO point);

	int updateMemberColumn(MemberPointDTO point);

	int insertMemberModify(MemberPointDTO point);

}
