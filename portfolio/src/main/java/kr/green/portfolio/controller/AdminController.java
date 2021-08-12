package kr.green.portfolio.controller;

import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.pagination.PageMaker;
import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.PublisherVO;

@Controller
public class AdminController {
	
	@Autowired
	BookService bookService;
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/admin/user/booklist")
	public ModelAndView bookList(ModelAndView mv, Criteria cri) {
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(10);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = bookService.getTotalCount(cri);
		pm.setTotalCount(totalCount);
		pm.calcData();
		ArrayList<BookVO> list = bookService.getBookList(cri);
		mv.addObject("list",list);
		mv.addObject("pm", pm);
		mv.setViewName("/admin/user/booklist");
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
	public ModelAndView modifyBookPost(ModelAndView mv, BookVO book, MultipartFile file) {
		BookVO dbBook = bookService.getBook(book.getBk_isbn());
		if(dbBook != null && dbBook.getBk_isbn().equals(book.getBk_isbn())) {
			BookVO updateBook = bookService.updateBook(book,file);
		}
		mv.setViewName("redirect:/admin/user/booklist");
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
		
	@RequestMapping(value="/admin/user/publisherlist")
	public ModelAndView PublisherList(ModelAndView mv, Criteria cri) {
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(10);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = memberService.getTotalCount(cri);
		pm.setTotalCount(totalCount);
		pm.calcData();
		ArrayList<PublisherVO> publish = memberService.getPublisherList(cri);
		mv.addObject("publish", publish);
		mv.addObject("pm",pm);
		mv.setViewName("/admin/user/publisherlist");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/publisherdetails", method=RequestMethod.POST)
	public ModelAndView modifyPubPost(ModelAndView mv, PublisherVO publisher) {
		PublisherVO dbPub = memberService.getPublisher(publisher.getPu_num());
		if(dbPub != null && dbPub.getPu_num() == publisher.getPu_num()) {
			PublisherVO updatePub = memberService.updatePub(publisher);
		}
		mv.setViewName("redirect:/admin/user/publisherlist");
		return mv;
	}
	
	
	@RequestMapping(value="/admin/user/author", method=RequestMethod.GET)
	public ModelAndView authorGet (ModelAndView mv) {
		mv.setViewName("/admin/user/author");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/author", method=RequestMethod.POST)
	public ModelAndView authorPost(ModelAndView mv, AuthorVO author) {
		boolean isAuthRegister = memberService.authRegister(author);
		if(isAuthRegister) {
			mv.setViewName("redirect:/admin/user/booklist");
		} else {
			mv.setViewName("redirect:/admin/user/author");
		}
		return mv;
	}
	
	@RequestMapping(value="/admin/user/authorlist")
	public ModelAndView authorList(ModelAndView mv, Criteria cri) {
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(10);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = memberService.getTotalCount(cri);
		pm.setTotalCount(totalCount);
		pm.calcData();
		ArrayList<AuthorVO> author = memberService.getAuthorList(cri);
		mv.addObject("author", author);
		mv.addObject("pm",pm);
		mv.setViewName("/admin/user/authorlist");
		return mv;
	}
	
	@RequestMapping(value="/admin/user/authordetails")
	public ModelAndView authorDetails(ModelAndView mv, Integer au_num) {
		AuthorVO author = memberService.getAuthor(au_num);
		mv.addObject("author", author);
		mv.setViewName("/admin/user/authordetails");
		return mv;
	}
	
	
	
}