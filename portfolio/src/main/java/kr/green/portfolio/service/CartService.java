package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;

import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;

public interface CartService {

	void addCart(CartVO cart);

	ArrayList<CartVO> getCartList(MemberVO member);

	void deleteCart(CartVO cart);

	void updateCart(CartVO cart);

	ArrayList<CartVO> getPaymentList(Integer[] ca_num, MemberVO member);

	ArrayList<CartVO> getPaymentList(BigInteger isbn, Integer amount);

	void getCartRegister(BigInteger[] checkList, Integer[] cataAmount, String ca_me_id);

	void insertPayFinished(OrderVO order, BigInteger finalCount);

	void insertParticulars(String or_num, Integer[] ca_re_code, Integer[] pr_amount);


}
