package kr.green.portfolio.controller;

import java.math.BigInteger;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.CartService;
import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;
import kr.green.portfolio.vo.RegistrationVO;

@Controller
public class CartController {

	@Autowired
	CartService cartService;
	@Autowired
	BookService bookService;
	@Autowired
	MemberService memberService;
		
	@RequestMapping(value="/order/cart")
	public ModelAndView getCartList (ModelAndView mv, HttpSession session, Integer ca_re_code) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		ArrayList<CartVO> cartList = cartService.getCartList(member);
		mv.addObject("cartList", cartList);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart", method=RequestMethod.POST)
	public String addCart(@RequestBody CartVO cart, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String result = "0";
		if(member != null) {
			cart.setCa_me_id(member.getMe_id());
			cartService.addCart(cart);
			result = "1";
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart/delete", method=RequestMethod.POST)
	public int deleteCart(@RequestBody CartVO cart, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String userId = member.getMe_id();
		int result = 0;
	
		if(member != null) {
			cart.setCa_me_id(userId);
			cartService.deleteCart(cart);
			result = 1;
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart/update", method=RequestMethod.POST)
	public String updateCart(@RequestBody CartVO cart, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String userId = member.getMe_id();
		int amount = cart.getCa_amount();
		String result = "0";
		if(member != null) {
			cart.setCa_me_id(userId);
			cart.setCa_amount(amount);
			cartService.updateCart(cart);
			result = "1";
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart/stock")
	public RegistrationVO stockCheck(@RequestBody CartVO cart, HttpSession session) {
		RegistrationVO regi = bookService.getRegiBook(cart.getCa_re_code());
		return regi;
	}
	
	@RequestMapping(value="/order/payment")
	public ModelAndView getPayment (ModelAndView mv, HttpSession session, Integer[] ca_num, BigInteger isbn, Integer amount) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		ArrayList<CartVO> paymentList = null;
		if(ca_num != null && ca_num.length != 0)
			paymentList = cartService.getPaymentList(ca_num, member);
		else {
			paymentList = cartService.getPaymentList(isbn, amount);
		}
		mv.addObject("paymentList", paymentList);
		mv.addObject("member",member);
		return mv;
	}

	@RequestMapping(value="/order/cartRegister", method=RequestMethod.POST )
	public ModelAndView getCartList (ModelAndView mv, BigInteger[] checkList, Integer[] cataAmount, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String ca_me_id = member.getMe_id();
		cartService.getCartRegister(checkList, cataAmount, ca_me_id);
		mv.setViewName("redirect:/order/cart");
		return mv;
	}
	
	@RequestMapping(value="/order/payfinished", method=RequestMethod.POST)
	public ModelAndView payFinished (ModelAndView mv, HttpSession session, OrderVO order, Integer[] ca_re_code, BigInteger finalCount, Integer[] pr_amount) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		if(member != null && member.getMe_id().equals(order.getOr_me_id())) {
			cartService.insertPayFinished(order, finalCount);			
//			for(int i = 0; i<ca_re_code.length; i++) {
//				System.out.println(ca_re_code[i]);
//			}
//			System.out.println("jj : "+order.getOr_num());
			
			cartService.insertParticulars(order.getOr_num(), ca_re_code, pr_amount);
		}
		mv.setViewName("/order/payfinished");
		return mv;
	}
}
