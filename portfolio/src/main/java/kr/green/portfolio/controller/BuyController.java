package kr.green.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BuyController {

	@RequestMapping(value="/buy/cart", method=RequestMethod.GET)
	public ModelAndView detailsGet(ModelAndView mv) {
		mv.setViewName("/buy/cart");
		return mv;
	}
	
}
