package kr.green.portfolio.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.CartDAO;
import kr.green.portfolio.vo.CartVO;

@Service
public class CartServiceImp implements CartService {

	@Autowired
	CartDAO cartDao;
	
	@Override
	public void addCart(CartVO cart) {
		System.out.println(cart);
		cartDao.addCart(cart);	
	}

}
