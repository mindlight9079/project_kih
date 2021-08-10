package kr.green.portfolio.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping(value="/member/memberinfo", method=RequestMethod.GET)
	public ModelAndView memberInfoGet (ModelAndView mv) {
		mv.setViewName("/member/memberinfo");
		return mv;
	}
	
	@RequestMapping(value="/member/memberinfo", method=RequestMethod.POST)
	public ModelAndView memberInfoPost (ModelAndView mv, MemberVO user, HttpServletRequest request) {
		MemberVO sessionUser = memberService.getMemberInfo(request);
		System.out.println(sessionUser);
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
	public ModelAndView greenpointGet (ModelAndView mv) {
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
}
