package kr.green.portfolio.service;


import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.BookDAO;
import kr.green.portfolio.dao.CartDAO;
import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;
import kr.green.portfolio.vo.ParticularsVO;
import kr.green.portfolio.vo.PaymentVO;
import kr.green.portfolio.vo.ShippingVO;

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
	public void insertParticulars(String partner_order_id, BigInteger[] isbn, Integer[] pr_amount, Integer pr_use_point) {
		if(partner_order_id == null && isbn == null && pr_amount == null && pr_use_point == null)
			return;
		for(int i=0; i<isbn.length; i++) {
			cartDao.insertParticulars(partner_order_id, isbn[i], pr_amount[i], pr_use_point);
		}
			
	}

	@Override
	public ArrayList<OrderVO> selectOrder(String me_id, Criteria cri) {
		if(me_id == null)
			return null;
		return cartDao.selectOrder(me_id, cri);
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

	@Override
	public ArrayList<ParticularsVO> getParticularsList(String or_num) {
		if(or_num == null)
			return null;
		return cartDao.getParticularsList(or_num);
	}

	@Override
	public OrderVO detailOrderList(String or_num, String checkId) {
		if(or_num == null && checkId == null)
			return null;
		return cartDao.detailOrderList(or_num, checkId);
	}

	@Override
	public void insertShipping(ShippingVO shipping) {
		if(shipping == null)
			return;
		cartDao.insertShipping(shipping);
	}

	@Override
	public ArrayList<ShippingVO> selectShipping(String userId) {
		if(userId == null)
			return null;
		return cartDao.selectShipping(userId);
	}

	@Override
	public ShippingVO detailShippingList(String or_num, String checkId) {
		if(or_num == null && checkId == null)
			return null;
		return cartDao.detailShippingList(or_num, checkId);
	}

	@Override
	public void insertPaymentInic(String apply_num, String pay_method, String me_name, String or_num, String formattedDate, String imp_uid, String merchant_uid) {
		if(apply_num == null && pay_method == null && me_name == null && or_num == null && formattedDate == null)
			return;
		cartDao.insertPaymentInic(apply_num, pay_method, me_name, or_num, formattedDate, imp_uid, merchant_uid);
		
	}

	@Override
	public void updateOrderState(String or_num) {
		if(or_num == null)
			return;
		cartDao.updateOrderState(or_num);
		
	}

	@Override
	public ArrayList<OrderVO> adminOrderList(Criteria cri) {
		return cartDao.adminOrderList(cri);
	}

	@Override
	public boolean updateState(OrderVO order) {
		if(order == null)
			return false;
		OrderVO dbOrder = cartDao.selectAdminOrder(order.getOr_num());
		dbOrder.setOr_state(order.getOr_state());
		cartDao.updateState(dbOrder);
		return true;
		
	}

	@Override
	public OrderVO getOrderInfo(String or_num) {
		if(or_num == null)
			return null;
		return cartDao.selectAdminOrder(or_num);
	}

	@Override
	public void updateCancel(String or_num) {
		if(or_num == null)
			return;
		OrderVO order = cartDao.selectAdminOrder(or_num);
		if(order.getOr_num().equals(or_num)) {
			order.setOr_state("결제취소");
			cartDao.updateCancel(order);
		}
		
	}

	@Override
	public int getTotalCountOrders(Criteria cri) {
		return cartDao.getTotalCountOrders(cri);
	}

	@Override
	public PaymentVO detailPaymentList(String or_num, String checkId) {
		if(or_num == null && checkId == null)
			return null;
		return cartDao.detailPaymentList(or_num, checkId);
	}

}
