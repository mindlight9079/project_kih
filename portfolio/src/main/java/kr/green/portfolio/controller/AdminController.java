package kr.green.portfolio.controller;

import java.math.BigInteger;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.PublisherVO;

@Controller
public class AdminController {
	
	@Autowired
	BookService bookService;
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/admin/user/booklist")
	public ModelAndView bookList(ModelAndView mv) {
		ArrayList<BookVO> list = bookService.getBookList();
		mv.addObject("list",list);
		mv.setViewName("/admin/user/booklist");
		return mv;
	}
	
	
	@RequestMapping(value="/admin/user/publisherlist")
	public ModelAndView PublisherList(ModelAndView mv) {
		ArrayList<PublisherVO> publish = memberService.getPublisherList();
		mv.addObject("publish", publish);
		mv.setViewName("/admin/user/publisherlist");
		return mv;
	}
	
	
	@RequestMapping(value="/admin/user/book", method=RequestMethod.GET)
	public ModelAndView adminBookGet(ModelAndView mv) {
		mv.setViewName("/admin/user/book");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/book", method=RequestMethod.POST)
	public ModelAndView adminBookPost(ModelAndView mv, BookVO book, MultipartFile file) {
		boolean isBookRegister = bookService.bookRegister(book, file);
		if(isBookRegister) {
			mv.setViewName("redirect:/admin/user/booklist");
		} else {
			mv.setViewName("redirect:/admin/user/book");
		}
		return mv;
	}	
	
	@RequestMapping(value="/admin/user/bookdetails")
	public ModelAndView bookDetails(ModelAndView mv, BigInteger bk_isbn) {
		BookVO book = bookService.getBook(bk_isbn);
		mv.addObject("book",book);
		mv.setViewName("/admin/user/bookdetails");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/bookdetails", method=RequestMethod.POST)
	public ModelAndView modifyBookPost(ModelAndView mv, BookVO book, HttpServletRequest request) {
		BookVO dbBook = bookService.getBookInfo(request);
		if(dbBook != null && dbBook.getBk_isbn().equals(book.getBk_isbn())) {
			BookVO updateBook = bookService.updateBook(book);
			if(updateBook != null) {
				request.getSession().setAttribute("book", updateBook);
			}
		}
		mv.setViewName("/admin/user/booklist");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/publisherdetails")
	public ModelAndView publisherDetails(ModelAndView mv, Integer pu_num) {
		PublisherVO publish = memberService.getPublisher(pu_num);
		mv.addObject("publisher", publish);
		mv.setViewName("/admin/user/publisherdetails");
		return mv;
	}
	
	
	@RequestMapping(value="/admin/user/publisher", method=RequestMethod.GET)
	public ModelAndView publisherGet(ModelAndView mv) {
		mv.setViewName("/admin/user/publisher");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/publisher", method=RequestMethod.POST)
	public ModelAndView publisherPost(ModelAndView mv, PublisherVO publisher) {
		boolean isPubRegister = memberService.pubRegister(publisher);
		if(isPubRegister) {
			mv.setViewName("redirect:/admin/user/booklist");
		} else {
			mv.setViewName("redirect:/admin/user/publisher");
		}
		return mv;
	}
	
	
}