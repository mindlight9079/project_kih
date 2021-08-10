package kr.green.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.BookService;
import kr.green.portfolio.vo.BookVO;

@Controller
public class AdminController {
	
	@Autowired
	BookService bookService;

	@RequestMapping(value="/admin/user/book", method=RequestMethod.GET)
	public ModelAndView adminBookGet(ModelAndView mv) {
		mv.setViewName("/admin/user/book");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/book", method=RequestMethod.POST)
	public ModelAndView adminBookPost(ModelAndView mv, BookVO book) {
		boolean isBookRegister = bookService.bookRegister(book);
		if(isBookRegister) {
			mv.setViewName("redirect:/");
		}
		mv.setViewName("redirect:/admin/user/book");
		return mv;
	}
	
}