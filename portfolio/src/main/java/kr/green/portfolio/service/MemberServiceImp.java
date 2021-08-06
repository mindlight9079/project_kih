package kr.green.portfolio.service;


import java.util.Date;
import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.util.WebUtils;

import kr.green.portfolio.dao.MemberDAO;
import kr.green.portfolio.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	MemberDAO memberDao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public MemberVO login(MemberVO user) {
		if(user == null || user.getMe_id() == null) {
			return null;
		}
		MemberVO dbUser = memberDao.getMember(user.getMe_id());
		if(dbUser == null)
			return null;
		if(user.getMe_password() == null || !passwordEncoder.matches(user.getMe_password(), dbUser.getMe_password()))
			return null;
		dbUser.setUseCookie(user.getUseCookie());
		return dbUser;
		
	}

	@Override
	public boolean signup(MemberVO user) {
		if(user == null)
			return false;
		String idRegex = "^[a-z0-9_-]{5,20}$";
		if(user.getMe_id() == null || !Pattern.matches(idRegex, user.getMe_id()) )
			return false;
		String pwRegex = "^[a-zA-Z0-9!@#]{8,16}$";
		if(user.getMe_password() == null || !Pattern.matches(pwRegex, user.getMe_password()))
			return false;
		String emailRegex = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
		if(user.getMe_email()== null || !Pattern.matches(emailRegex, user.getMe_email()))
			return false;
		if(user.getMe_name() == null || user.getMe_name().trim().length() == 0)
			return false;
		if(user.getMe_gender() == null)
			return false;
		String encPw = passwordEncoder.encode(user.getMe_password());
		user.setMe_password(encPw);
		memberDao.insertMember(user);
		return true;
	}


	@Override
	public Object getMember(String id) {
		String idRegex = "^[a-z0-9_-]{5,20}$";
		if(id == null || !Pattern.matches(idRegex, id) )
			return "NO";
		if(memberDao.selectUser(id) != null)
			return "IMPOSSIBLE";
		return "POSSIBLE";
	}

	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		if(request == null || response == null)
			return;
		MemberVO user = getMemberByRequest(request);
		if(user == null)
			return;
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.invalidate();
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		if(loginCookie == null)
			return ;
		loginCookie.setPath("/");
		loginCookie.setMaxAge(0);
		response.addCookie(loginCookie);
		keepLogin(user.getMe_id(), "none", new Date());
	}

	private MemberVO getMemberByRequest(HttpServletRequest request) {
		if(request == null)
			return null;
		return (MemberVO)request.getSession().getAttribute("user");
	}

	@Override
	public void keepLogin(String me_id, String me_session_id, Date me_session_limit) {
		if(me_id == null)
			return;
		memberDao.keepLogin(me_id, me_session_id,me_session_limit);
		
	}

	@Override
	public MemberVO getMemberByCookie(String me_session_id) {
		if(me_session_id == null)
			return null;
		return memberDao.selectUserBySession(me_session_id);
	}
	

}
