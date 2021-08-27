package kr.green.portfolio.controller;

import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.pagination.PageMaker;
import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.CartService;
import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.BooksVO;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.RegistrationVO;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	@Autowired
	MemberService memberService;
	@Autowired
	CartService cartService;
	
	@RequestMapping(value="/book/details")
	public ModelAndView detailsGet(ModelAndView mv, BigInteger re_bk_isbn) {
		BookVO book = bookService.getBook(re_bk_isbn);
		RegistrationVO regi = bookService.getRegi(re_bk_isbn);
		ArrayList<AuthorVO> author = memberService.authorList(re_bk_isbn);
		ArrayList<AuthorVO> subAuthor = memberService.subAuthorList(re_bk_isbn);
		mv.addObject("regi", regi);
		mv.addObject("book",book);
		mv.addObject("author", author);
		mv.addObject("subAuthor", subAuthor);
		mv.setViewName("/book/details");
		return mv;
	}
	
	@RequestMapping(value="/book/catagory")
	public ModelAndView catagoryGet (ModelAndView mv, String re_catagory, Criteria cri) {
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(5);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = bookService.getTotalCountCatagory(re_catagory, cri);
		pm.setTotalCount(totalCount);
		pm.calcData();
		ArrayList<BookVO> registration = bookService.getRegistration(re_catagory, cri);
		ArrayList<BooksVO> books = memberService.booksList(re_catagory, cri);
		ArrayList<RegistrationVO> regist = bookService.getRegiBookList(re_catagory, cri);
		mv.addObject("registration", registration);
		mv.addObject("books", books);
		mv.addObject("regist", regist);
		mv.addObject("pm", pm);
		mv.setViewName("/book/catagory");
		return mv;
	}
	
	@RequestMapping(value="/book/search")
	public ModelAndView getSearch(ModelAndView mv, Criteria cri) {
		ArrayList<BookVO> bookSearch = bookService.getSearch(cri);
		mv.addObject("bookSearch", bookSearch);
		mv.setViewName("/book/search");
		return mv;
	}
}
