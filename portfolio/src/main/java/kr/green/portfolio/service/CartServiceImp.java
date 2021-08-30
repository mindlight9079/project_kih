package kr.green.portfolio.service;


import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.BookDAO;
import kr.green.portfolio.dao.CartDAO;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;

@Service
public class CartServiceImp implements CartService {

	@Autowired
	CartDAO cartDao;
	@Autowired
	BookDAO bookDao;

	@Override
	public void addCart(CartVO cart) {
		CartVO dbCart = cartDao.selectCart(cart.getCa_me_id(), cart.getCa_re_code());
		if(dbCart != null) {
			 dbCart.setCa_amount(cart.getCa_amount());
			 cartDao.updateCart(cart);
		} else {
			cartDao.addCart(cart);
		}
	}

	@Override
	public ArrayList<CartVO> getCartList(MemberVO member) {
		if(member == null)
			return null;	
		return cartDao.getCartList(member.getMe_id());
	}

	@Override
	public void deleteCart(CartVO cart) {
		cart.setCa_valid("D");
		cartDao.deleteCart(cart);		
	}

	@Override
	public void updateCart(CartVO cart) {
		cartDao.updateCart(cart);
		
	}

	@Override
	public ArrayList<CartVO> getPaymentList(Integer[] ca_num, MemberVO member) {
		if(ca_num == null && member == null)
			return null;
		ArrayList<CartVO> list = new ArrayList<CartVO>();
		for(Integer tmp : ca_num) {
			list.add(cartDao.getPayment(tmp, member));
		}
		return list;
	}

	@Override
	public ArrayList<CartVO> getPaymentList(BigInteger isbn, Integer amount) {
		if(isbn == null && amount == null) {
			return null;
		}
		return cartDao.getPaymentList(isbn, amount);		
	}

	@Override
	public void getCartRegister(BigInteger[] checkList, Integer[] cataAmount, String ca_me_id) {
		if(checkList == null && ca_me_id == null )
			return;
		for(int i = 0 ;i < checkList.length; i++) {
			CartVO dbCart = cartDao.seletCartRegister(checkList[i],ca_me_id);
			if(dbCart != null) {
				 dbCart.setCa_amount(cataAmount[i]);
				 cartDao.updateCartRegister(dbCart.getCa_num(),cataAmount[i]);
			} else {				
				cartDao.getCartRegister(checkList[i],cataAmount[i],ca_me_id);
			}
		}
	}

	@Override
	public void insertPayFinished(OrderVO order, BigInteger finalCount) {
		order.setOr_num(order.setOr_random_num());
		System.out.println(finalCount);
		cartDao.insertPayFinished(order, finalCount);
	}

	@Override
	public void insertParticulars(String or_num, Integer[] ca_re_code, Integer[] pr_amount) {
		if(or_num == null && ca_re_code == null)
			return;
		for(int i = 0; i < ca_re_code.length; i++) {
			bookDao.updateAmount(ca_re_code[i], pr_amount[i]);
			cartDao.insertParticulars(or_num, ca_re_code[i],pr_amount[i]);
		}
	}
}
