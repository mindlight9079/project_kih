package kr.green.portfolio.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.green.portfolio.vo.MemberVO;

public interface MemberService {

	MemberVO login(MemberVO user);

	boolean signup(MemberVO user);

	Object getMember(String id);

	void logout(HttpServletRequest request, HttpServletResponse response);

}
