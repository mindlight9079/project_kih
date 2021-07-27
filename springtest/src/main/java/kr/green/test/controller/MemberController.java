package kr.green.test.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import kr.green.test.service.MemberService;
import kr.green.test.vo.MemberVO;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {
	
		@Autowired 
		MemberService memberService;
		@Autowired
		private JavaMailSender mailSender;
		
		
		@GetMapping(value = "/signin")
		public ModelAndView signinGet(ModelAndView mv) {
			mv.setViewName("/template/member/signin");
			return mv;
		}
		
		@PostMapping(value = "/signin")
		public ModelAndView signinPost(ModelAndView mv, MemberVO user, String pw) {
			MemberVO loginUser = memberService.signin(user);
			System.out.println(loginUser);
			if(loginUser != null)
				mv.setViewName("redirect:/");
			else
				mv.setViewName("redirect:/signin");
				mv.addObject("user",loginUser); 
			return mv;
		}
		
		@GetMapping(value = "/signup")
		public ModelAndView signupGet(ModelAndView mv) {
			mv.setViewName("/template/member/signup");
			return mv;
		}
		
		/* 매개변수 user를 하면 객체가 생성된 후, 화면에서 전달한 name과 일치하는 변수명을 가진 멤버 변수의 setter를 이용하여 값을 재설정
		 * 일반적으로 매개변수는 객체를 자동으로 생성하는 건 아님.
		 *  */
		@PostMapping(value = "/signup")
		public ModelAndView signupGet(ModelAndView mv, MemberVO user) {
			memberService.signup(user);
			mv.setViewName("redirect:/");				
			return mv;
		}
		
		@GetMapping(value="/member/mypage")
		public ModelAndView myPageGet(ModelAndView mv) {
			mv.setViewName("/template/member/mypage");
			return mv;
		}
		@PostMapping(value="/member/mypage")
		public ModelAndView myPagePost(ModelAndView mv, MemberVO user, HttpServletRequest request) {
			//user: 화면에서 보낸 회원 정보, 정상적이라면 바로 수정해도 되지만 개발자 도구를 이용하여 잘못된 정보를 보낼 수 있기 때문에 바로 수정하면 안됨.
			//sUser : 현재 로그인된 회원 정보
			//uUser : 업데이트 된 회원 정보로 user의 아이디와 sUser의 아이디가 일치하지 않으면 null, 일치하면 업데이트된 회원 정보
			MemberVO sUser = memberService.getMember(request);
			MemberVO uUser = memberService.updateMember(user,sUser);	
			if(uUser != null) {
				request.getSession().setAttribute("user", uUser);
			}
			mv.setViewName("redirect:/member/mypage");
			return mv;
		}
		
		@GetMapping(value="/member/signout")
		public ModelAndView signOutGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
			MemberVO user = (MemberVO)request.getSession().getAttribute("user");
			if(user != null) {
			request.getSession().removeAttribute("user");
			request.getSession().invalidate();
			Cookie loginCookie = WebUtils.getCookie(request,"loginCookie");
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				memberService.keeplogin(user.getId(), "none", new Date());
			}
			}
			mv.setViewName("redirect:/");
			return mv;
		}	
		
		@ResponseBody
		@GetMapping(value="/member/idCheck/{id}")
		public String memberIdCheckGet(@PathVariable ("id") String id) {
			return memberService.idCheck(id) ? "POSSIBLE":"IMPOSSIBLE";
		}	
		
		@GetMapping(value="/find/pw")
		public ModelAndView findPw(ModelAndView mv) {
			mv.setViewName("/template/member/findpw");
			return mv;
		}
		
		@ResponseBody
		@GetMapping(value="/find/pw/{id}")
		public String findPwIdGet(@PathVariable("id") String id) {
			return memberService.findPw(id);
		}
}

