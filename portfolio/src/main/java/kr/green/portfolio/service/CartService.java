package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;

import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;
import kr.green.portfolio.vo.PaymentVO;

public interface CartService {

	void addCart(CartVO cart);

	ArrayList<CartVO> getCartList(MemberVO member);

	void deleteCart(CartVO cart);

	void updateCart(CartVO cart);

	ArrayList<CartVO> getPaymentList(Integer[] ca_num, MemberVO member);

	ArrayList<CartVO> getPaymentList(BigInteger isbn, Integer amount);

	void getCartRegister(BigInteger[] checkList, Integer[] cataAmount, String ca_me_id);

	void insertPayFinished(OrderVO order);

	void getOrder(String partner_order_id);

	void insertPayment(String tid, String payment_method_type, String me_name, String partner_order_id, Long point, String approved_at);

	void insertParticulars(String partner_order_id, BigInteger[] isbn, String or_deliver, Integer[] pr_amount);


}
