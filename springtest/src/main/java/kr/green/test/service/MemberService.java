package kr.green.test.service;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import kr.green.test.vo.MemberVO;

public interface MemberService {

	MemberVO signin(MemberVO user);

	public void signup(MemberVO user);

	MemberVO getMember(HttpServletRequest request);

	MemberVO updateMember(MemberVO user, MemberVO dbUser);

	boolean idCheck(String id);

	void keeplogin(String id, String session_id, Date session_limit);

	MemberVO getMemberByCookie(String session_id);

	String findPw(String id);
    
}
