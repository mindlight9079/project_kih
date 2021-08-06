package kr.green.portfolio.service;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.green.portfolio.vo.MemberVO;

public interface MemberService {

	MemberVO login(MemberVO user);

	boolean signup(MemberVO user);

	Object getMember(String id);

	void logout(HttpServletRequest request, HttpServletResponse response);

	void keepLogin(String me_id, String id, Date date);

	MemberVO getMemberByCookie(String value);

}
