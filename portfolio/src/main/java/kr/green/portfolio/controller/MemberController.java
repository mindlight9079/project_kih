package kr.green.portfolio.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.pagination.PageMaker;
import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.CartService;
import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.BooksVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	@Autowired
	BookService bookService;
	@Autowired
	CartService cartService;
	
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public ModelAndView loginGet(ModelAndView mv) {
		mv.setViewName("/member/login");
		return mv;
	}
	
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public ModelAndView loginPost (ModelAndView mv, MemberVO user) {
		MemberVO dbUser = memberService.login(user);
		if(dbUser != null) {
			mv.setViewName("redirect:/");
		} else {
			mv.setViewName("redirect:/member/login");
		}
		mv.addObject("user",dbUser);
		return mv;
	}
	
	@RequestMapping(value="/member/signup", method=RequestMethod.GET)
	public ModelAndView signupGet (ModelAndView mv) {
		mv.setViewName("/member/signup");
		return mv;
		}
	
	@RequestMapping(value="/member/signup", method=RequestMethod.POST)
	public ModelAndView signupPost(ModelAndView mv, MemberVO user) {
		boolean isSignup = memberService.signup(user);
		if(isSignup) {
			mv.setViewName("redirect:/");
		}else {
			mv.setViewName("redirect:/member/signup");
		}
		return mv;
	}
	
	@RequestMapping(value="/member/mypage", method=RequestMethod.GET)
	public ModelAndView mypageGet (ModelAndView mv, HttpSession session, Criteria cri) {
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(10);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = memberService.getTotalCountMyPage(cri);
		pm.setTotalCount(totalCount);
		pm.calcData();
		MemberVO member = (MemberVO)session.getAttribute("user");
		ArrayList<OrderVO> orderList = cartService.selectOrderList(member.getMe_id(),cri);
		mv.addObject("orderList", orderList);
		mv.addObject("pm", pm);
		mv.setViewName("/member/mypage");
		return mv;
	}
	
	@RequestMapping(value="/member/memberinfo", method=RequestMethod.GET)
	public ModelAndView memberInfoGet (ModelAndView mv) {
		mv.setViewName("/member/memberinfo");
		return mv;
	}
	
	@RequestMapping(value="/member/memberinfo", method=RequestMethod.POST)
	public ModelAndView memberInfoPost (ModelAndView mv, MemberVO user, HttpServletRequest request) {
		MemberVO sessionUser = memberService.getMemberInfo(request);
		if(sessionUser != null && sessionUser.getMe_id().equals(user.getMe_id())) {
			MemberVO updateUser = memberService.updateMember(user);
			if(updateUser !=null) {
				request.getSession().setAttribute("user", updateUser);
			}
		}
		mv.setViewName("/member/mypage");
		return mv;
	}
	
	@RequestMapping(value="/member/greenpoint", method=RequestMethod.GET)
	public ModelAndView greenpointGet (ModelAndView mv, Criteria cri, HttpSession session) {
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(10);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = memberService.getTotalCountGreenPoint(cri);
		pm.setTotalCount(totalCount);
		pm.calcData();
		MemberVO member = (MemberVO)session.getAttribute("user");
		ArrayList<OrderVO> greenPoint = cartService.selectOrder(member.getMe_id());
		mv.addObject("greenPoint", greenPoint);
		mv.addObject("pm", pm);
		mv.setViewName("/member/greenpoint");
		return mv;
	}
	
	@ResponseBody
	@PostMapping("/id/check")
	public String idCheck(String id) {
		return (String)memberService.getMember(id) ;
	}	
	
	@GetMapping("/member/logout")
	public ModelAndView logoutGet (ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		memberService.logout(request, response);
		mv.setViewName("redirect:/");
		return mv;
	}
	
	@RequestMapping(value="/member/authorintro")
	public ModelAndView getAuthorIntro(ModelAndView mv, Integer bs_num) {
		BooksVO author = memberService.getAuthorIntro(bs_num);
		ArrayList<BookVO> bookList = bookService.getBookAuthor(bs_num);
		mv.addObject("author", author);
		mv.addObject("bookList", bookList);
		mv.setViewName("/member/authorintro");
		return mv;
	}
	
	@RequestMapping(value="/member/mypagedetails", method=RequestMethod.GET)
	public ModelAndView mypageDetails (ModelAndView mv) {
		mv.setViewName("/member/mypagedetails");
		return mv;
	}
	
}
