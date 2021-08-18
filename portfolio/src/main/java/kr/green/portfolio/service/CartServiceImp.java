package kr.green.portfolio.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.CartDAO;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.RegistrationVO;

@Service
public class CartServiceImp implements CartService {

	@Autowired
	CartDAO cartDao;

	@Override
	public void addCart(CartVO cart) {
		cartDao.addCart(cart);
		
	}

	@Override
	public ArrayList<CartVO> getCartList(MemberVO member) {
		if(member == null)
			return null;	
		return cartDao.getCartList(member.getMe_id());
	}

}
