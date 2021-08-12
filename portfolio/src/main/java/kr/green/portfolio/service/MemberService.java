package kr.green.portfolio.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.PublisherVO;

public interface MemberService {

	MemberVO login(MemberVO user);

	boolean signup(MemberVO user);

	Object getMember(String id);

	void logout(HttpServletRequest request, HttpServletResponse response);

	void keepLogin(String me_id, String id, Date date);

	MemberVO getMemberByCookie(String value);

	MemberVO getMemberInfo(HttpServletRequest request);

	MemberVO updateMember(MemberVO user);

	boolean pubRegister(PublisherVO publisher);

	ArrayList<PublisherVO> getPublisherList(Criteria cri);

	PublisherVO getPublisher(Integer pu_num);

	boolean authRegister(AuthorVO author);

	int getTotalCount(Criteria cri);

	ArrayList<AuthorVO> getAuthorList(Criteria cri);

	AuthorVO getAuthor(Integer au_num);

	PublisherVO updatePub(PublisherVO publisher);



}
