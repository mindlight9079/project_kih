package kr.green.portfolio.controller;

import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.RegistrationVO;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/book/details")
	public ModelAndView detailsGet(ModelAndView mv, BigInteger re_bk_isbn) {
		BookVO book = bookService.getBook(re_bk_isbn);
		RegistrationVO regi = bookService.getRegi(re_bk_isbn);
		ArrayList<AuthorVO> author = memberService.authorList(re_bk_isbn);
		ArrayList<AuthorVO> subAuthor = memberService.subAuthorList(re_bk_isbn);
		AuthorVO anAuthor = memberService.getAnAuthor(re_bk_isbn);
		AuthorVO aSubAuthor = memberService.getASubAuthor(re_bk_isbn);
		mv.addObject("regi", regi);
		mv.addObject("book",book);
		mv.addObject("author", author);
		mv.addObject("subAuthor", subAuthor);
		mv.addObject("anAuthor", anAuthor);
		mv.addObject("aSubAuthor", aSubAuthor);
		mv.setViewName("/book/details");
		return mv;
	}
}
