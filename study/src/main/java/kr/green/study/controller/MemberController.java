package kr.green.study.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.green.study.service.MemberService;
import kr.green.study.vo.MemberVO;
import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class MemberController {
	
	MemberService memberService;
	
	@GetMapping("/member/signup")
	public ModelAndView memberSingupGet (ModelAndView mv) {
	mv.addObject("title","회원가입");
	mv.setViewName("/template/member/signup");
	return mv;
	}
	
	@PostMapping("/member/signup")
	public ModelAndView memberSingupPost (ModelAndView mv, MemberVO user) {
	boolean signupOk = memberService.signup(user);
	mv.setViewName("redirect:/");
	return mv;
	}
}
