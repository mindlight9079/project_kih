package kr.green.portfolio.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.green.portfolio.service.MemberService;

public class AutoLoginInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	MemberService memberService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object user = session.getAttribute("user");
		if(user == null) {
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie != null) {
				user = memberService.getMemberByCookie(loginCookie.getValue());
				if(user != null)
					session.setAttribute("user", user);
			}
		}
		return true;
	}

}
