package kr.green.portfolio.service;

import kr.green.portfolio.vo.MemberVO;

public interface MemberService {

	MemberVO login(MemberVO user);

	boolean signup(MemberVO user);

}
