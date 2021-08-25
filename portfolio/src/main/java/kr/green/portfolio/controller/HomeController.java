package kr.green.portfolio.controller;

import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.BookService;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.RegistrationVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	BookService bookService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv, BigInteger re_bk_isbn) {
		ArrayList<BookVO> bookChoice = bookService.getChoice();
		ArrayList<BookVO> registration = bookService.getRegiSale();
		mv.addObject("bookChoice", bookChoice);
		mv.addObject("registration", registration);
		mv.setViewName("/main/home");
		return mv;
	}
		
}
