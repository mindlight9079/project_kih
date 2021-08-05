package kr.green.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
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
	public ModelAndView mypageGet (ModelAndView mv) {
		mv.setViewName("/member/mypage");
		return mv;
	}
	
}
