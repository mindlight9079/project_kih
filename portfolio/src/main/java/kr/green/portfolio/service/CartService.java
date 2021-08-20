package kr.green.portfolio.service;

import java.util.ArrayList;

import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.RegistrationVO;

public interface CartService {

	void addCart(CartVO cart);

	ArrayList<CartVO> getCartList(MemberVO member);

	void deleteCart(CartVO cart);

	void updateCart(CartVO cart);
}
