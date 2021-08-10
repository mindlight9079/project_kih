package kr.green.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {

	@RequestMapping(value="/book/details", method=RequestMethod.GET)
	public ModelAndView detailsGet(ModelAndView mv) {
		mv.setViewName("/book/details");
		return mv;
	}
}
