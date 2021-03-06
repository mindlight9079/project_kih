package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.BooksVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.PointVO;
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

	ArrayList<AuthorVO> getAuthorList(Criteria cri);

	AuthorVO getAuthor(Integer au_num);

	PublisherVO updatePub(PublisherVO publisher);

	AuthorVO updateAuth(AuthorVO author);

	boolean booksRegi(BooksVO books);

	ArrayList<BooksVO> getbooksList(Criteria cri);

	BooksVO getBooks(Integer bs_num);

	BooksVO updateBooks(BooksVO books);
	
	ArrayList<AuthorVO> authorList(BigInteger re_bk_isbn);

	ArrayList<AuthorVO> subAuthorList(BigInteger re_bk_isbn);

	int getTotalCountPublish(Criteria cri);

	int getTotalCountAuthor(Criteria cri);

	int getTotalCountBooks(Criteria cri);

	ArrayList<BooksVO> booksList(String re_catagory, Criteria cri);

	int getTotalCountGreenPoint(Criteria cri, String me_id);

	ArrayList<BooksVO> getBooksSearch(Criteria cri);

	BooksVO getAuthorIntro(Integer bs_num);

	int getTotalCountMyPage(Criteria cri, String me_id);

	void updatePoint(String me_id, Integer pr_use_point);

	void updateCancelPoint(String me_id, Integer pr_use_point);

	void insertPoint(String me_id, Integer or_green_point);

	void usePoint(String me_id, Integer pr_use_point);

	void insertCancelPoint(String me_id, Integer pr_use_point);

	ArrayList<PointVO> getPointList(String me_id, Criteria cri);

	void returnPoint(String me_id, Integer po_point);

	void updateMemberPoint(String po_me_id, Integer po_point);

	ArrayList<MemberVO> getMemberByEmail(String email);

	MemberVO getMemberId(String id);

	void memberDelete(MemberVO member);



}
