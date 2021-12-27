package com.jihun.cafe.payment.model.service;

import com.jihun.cafe.goods.model.dto.MgGoodsDTO;
import com.jihun.cafe.member.model.dto.MemberDTO;
import com.jihun.cafe.member.model.dto.MemberPointDTO;
import com.jihun.cafe.order.model.dto.OrderAddressDTO;
import com.jihun.cafe.order.model.dto.OrderDTO;
import com.jihun.cafe.order.model.dto.OrderDeliveryDTO;
import com.jihun.cafe.order.model.dto.OrderGoodsDTO;
import com.jihun.cafe.payment.model.dto.PaymentDTO;
import com.jihun.cafe.payment.model.dto.PaymentDivisionDTO;

public interface PaymentService {

	MgGoodsDTO selectGoods(int no);

	MemberDTO viewMemberDetailInfo(String username);

	int insertOrder(OrderDTO order);

	int insertOrderGoods(OrderGoodsDTO orderGoods);

	int insertOrderDelivery(OrderDeliveryDTO orderDelivery);

	int insertOrderAddress(OrderAddressDTO orderAddress);

	int insertOrderPayment(PaymentDTO payment);

	int insertOrderPaymentDivision(PaymentDivisionDTO paymentDivision);

	int insertMemberPointInfo(MemberPointDTO point);

}
