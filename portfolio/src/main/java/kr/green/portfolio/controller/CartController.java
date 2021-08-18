package kr.green.portfolio.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.CartService;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;

@Controller
public class CartController {

	@Autowired
	CartService cartService;
	@Autowired
	BookService bookService;
	
	@RequestMapping(value="order/cart")
	public ModelAndView cartGet(ModelAndView mv) {
		
		mv.setViewName("order/cart");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="order/cart", method=RequestMethod.POST)
	public void addCart(CartVO cart, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		cart.setCa_me_id(member.getMe_id());
		cartService.addCart(cart);
	}
}
