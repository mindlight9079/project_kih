package kr.green.portfolio.controller;

import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
import kr.green.portfolio.vo.ParticularsVO;
import kr.green.portfolio.vo.PaymentVO;
import kr.green.portfolio.vo.PointVO;
import kr.green.portfolio.vo.ShippingVO;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	@Autowired
	BookService bookService;
	@Autowired
	CartService cartService;
	@Autowired
	private JavaMailSender mailSender;
	
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
		MemberVO member = (MemberVO)session.getAttribute("user");
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(5);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = memberService.getTotalCountMyPage(cri, member.getMe_id());
		pm.setTotalCount(totalCount);
		pm.calcData();
		ArrayList<OrderVO> orderList = cartService.selectOrderList(member.getMe_id(),cri);
		mv.addObject("member", member);
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
		mv.setViewName("redirect:/");
		return mv;
	}
	
	@RequestMapping(value="/member/greenpoint", method=RequestMethod.GET)
	public ModelAndView greenpointGet (ModelAndView mv, Criteria cri, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(5);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(5);
		int totalCount = memberService.getTotalCountGreenPoint(cri, member.getMe_id());
		pm.setTotalCount(totalCount);
		pm.calcData();
		ArrayList<PointVO> pointList = memberService.getPointList(member.getMe_id(),cri);
		mv.addObject("member", member);
		mv.addObject("pointList", pointList);
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
	
	@RequestMapping(value="/member/mypagedetails")
	public ModelAndView mypageDetails (ModelAndView mv, String or_num, HttpSession session) {
		ArrayList<ParticularsVO> particulars = cartService.getParticularsList(or_num);
		MemberVO member = (MemberVO)session.getAttribute("user");
		String checkId = member.getMe_id();
		OrderVO order = cartService.detailOrderList(or_num, checkId);
		ShippingVO shipping = cartService.detailShippingList(or_num, checkId);
		PaymentVO payment = cartService.detailPaymentList(or_num,checkId);
		mv.addObject("payment", payment);
		mv.addObject("shipping", shipping);
		mv.addObject("order", order);
		mv.addObject("particulars", particulars);
		mv.setViewName("/member/mypagedetails");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/member/point")
	public String pointCheck (String po_me_id, String or_num, Integer po_point) {
		memberService.insertPoint(po_me_id, po_point);
		memberService.updateMemberPoint(po_me_id, po_point);
		cartService.updateOrderConfirmed(or_num, po_me_id);
		return "OK";
	}
	
	
	@GetMapping("/find/pw")
	public ModelAndView findPwGet(ModelAndView mv) {
		mv.setViewName("/member/findpw");
		return mv;
	}
	@ResponseBody
	@GetMapping("/find/pw/{id}")
	public String findPwPost(@PathVariable("id") String id) {
		MemberVO user = memberService.getMemberId(id);
		if(user == null)
			return "FAIL";
		try {
	        MimeMessage message = mailSender.createMimeMessage();
	        MimeMessageHelper messageHelper 
	            = new MimeMessageHelper(message, true, "UTF-8");
	        //?????? ???????????? ??????
	        String newPw = newPw();
	        //??? ??????????????? DB??? ??????
	        user.setMe_password(newPw);
	        memberService.updateMember(user);

	        messageHelper.setFrom("kih9079@gmail.com");  // ??????????????? ??????????????? ?????? ??????????????? ??????
	        messageHelper.setTo(user.getMe_email());     // ???????????? ?????????
	        messageHelper.setSubject("??? ??????????????? ???????????????."); // ??????????????? ????????? ????????????
	        messageHelper.setText("","????????? ??? ??????????????? <b>" + newPw + "</b>?????????.");  // ?????? ??????

	        mailSender.send(message);
	        return "SUCCESS";
	    } catch(Exception e){
	        System.out.println(e);
	    }
		return "FAIL";
	}
	@GetMapping("/find/id")
	public ModelAndView findIdGet(ModelAndView mv) {
		mv.setViewName("/member/findid");
		return mv;
	}
	@ResponseBody
	@PostMapping("/find/id")
	public String findIdPost(String me_email) {
		System.out.println(me_email);
		ArrayList<MemberVO> userList = memberService.getMemberByEmail(me_email);

		if(userList == null || userList.size() == 0)
			return "FAIL";
		try {
			ArrayList<String> idList = new ArrayList<String>();
			for(MemberVO user : userList) {
				idList.add(user.getMe_id());
			}
			System.out.println(idList);
	        MimeMessage message = mailSender.createMimeMessage();
	        MimeMessageHelper messageHelper 
	            = new MimeMessageHelper(message, true, "UTF-8");

	        messageHelper.setFrom("kih9079@gmail.com");  // ??????????????? ??????????????? ?????? ??????????????? ??????
	        messageHelper.setTo(me_email);     // ???????????? ?????????
	        messageHelper.setSubject("????????? ??????????????????."); // ??????????????? ????????? ????????????
	        messageHelper.setText("","????????? ???????????? <b>" + idList.toString().replaceAll("[\\[\\]]","") + "</b>?????????.");  // ?????? ??????
	        
	        mailSender.send(message);
	        return "SUCCESS";
	    } catch(Exception e){
	        System.out.println(e);
	    }
		return "FAIL";
	}
	//8????????? ?????? or ????????????????????? ??? ????????????
	private String newPw() {
		//???????????? : 0~9 => ????????? : 0~9
		//???????????? : 10~35 => ????????? : a~z
		//???????????? : 36~61 => ????????? : A~Z
		//12 =>c
		String pw="";
		int max = 61, min = 0;
		for(int i=0; i<8; i++) {
			int r = (int)(Math.random()*(max-min+1)) + min;
			//int r = (int)(Math.random()*62);
			if(r <= 9) {
				pw += r;
			}else if(r<=35) {
				pw += (char)('a'+(r-10));
			}else {
				pw += (char)('A'+(r-36));
			}
		}
		return pw;
	}
	
	@RequestMapping(value="/member/memberout", method= RequestMethod.GET)
	public ModelAndView memberout (ModelAndView mv, HttpSession session) {
		mv.setViewName("/member/memberout");
		return mv;
	}
	
	@RequestMapping(value="/member/memberout", method= RequestMethod.POST)
	public ModelAndView memberDelete (ModelAndView mv, MemberVO memberVO, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("user");
		if(memberService.login(memberVO) == null){
			mv.addObject("msg", false);
			mv.setViewName("/member/memberout");
		}else {
			memberService.memberDelete(member);
			session.invalidate();
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	
}
