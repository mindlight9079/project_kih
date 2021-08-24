package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;

import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;

public interface CartService {

	void addCart(CartVO cart);

	ArrayList<CartVO> getCartList(MemberVO member);

	void deleteCart(CartVO cart);

	void updateCart(CartVO cart);

	ArrayList<CartVO> getPaymentList(Integer[] ca_num, MemberVO member);

	ArrayList<CartVO> getPaymentList(BigInteger isbn, Integer amount);

}
