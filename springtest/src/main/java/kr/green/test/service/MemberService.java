package kr.green.test.service;

import javax.servlet.http.HttpServletRequest;

import kr.green.test.vo.MemberVO;

public interface MemberService {

	MemberVO signin(MemberVO user);

	public void signup(MemberVO user);

	MemberVO getMember(HttpServletRequest request);

	MemberVO updateMember(MemberVO user, MemberVO sUser);
    
}
