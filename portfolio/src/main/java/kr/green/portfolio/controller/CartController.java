package kr.green.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.CartService;

@Controller
public class CartController {

	@Autowired
	CartService cartService;
	
	@RequestMapping(value="/order/cart", method=RequestMethod.GET)
	public ModelAndView cartGet(ModelAndView mv) {
		mv.setViewName("/order/cart");
		return mv;
	}
	
	
}
