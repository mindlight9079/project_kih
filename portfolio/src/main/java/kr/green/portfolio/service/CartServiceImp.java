package kr.green.portfolio.service;


import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.BookDAO;
import kr.green.portfolio.dao.CartDAO;
import kr.green.portfolio.pagination.Criteria;
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
	public void insertPayFinished(OrderVO order) {
		order.setOr_num(order.setOr_random_num());
		cartDao.insertPayFinished(order);
	}

	@Override
	public void getOrder(String partner_order_id) {
		if(partner_order_id == null)
			return;
		OrderVO order = cartDao.getOrder(partner_order_id);
		if(order.getOr_num().equals(partner_order_id)) {
			order.setOr_state("결제완료");
			cartDao.updateOrder(order);
		}
	}

	@Override
	public void insertPayment(String tid, String payment_method_type, String me_name, String partner_order_id, Long point, String approved_at) {
		if(tid == null && payment_method_type == null && me_name == null & partner_order_id == null && point == null && approved_at == null)
			return;
		cartDao.insertPayment(tid, payment_method_type, me_name, partner_order_id, point, approved_at);
	}

	@Override
	public void insertParticulars(String partner_order_id, BigInteger[] isbn, String or_deliver, Integer[] pr_amount) {
		if(partner_order_id == null && isbn == null && or_deliver == null && pr_amount == null)
			return;
		for(int i=0; i<isbn.length; i++) {
			cartDao.insertParticulars(partner_order_id, isbn[i], or_deliver, pr_amount[i]);
		}
			
	}

	@Override
	public ArrayList<OrderVO> selectOrder(String me_id) {
		if(me_id == null)
			return null;
		return cartDao.selectOrder(me_id);
	}

	@Override
	public void updateValid(String me_id, BigInteger[] isbn) {
		if(me_id == null && isbn == null)
			return;
		for(int i=0; i<isbn.length; i++) {
			cartDao.updateValid(me_id, isbn[i]);
		}
		
	}

	@Override
	public ArrayList<OrderVO> selectOrderList(String me_id, Criteria cri) {
		if(me_id == null)
			return null;	
		return cartDao.selectOrderList(me_id, cri);
	}




}
