package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.BooksVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.PointVO;
import kr.green.portfolio.vo.PublisherVO;
 
public interface MemberDAO {
	
	public MemberVO getMember(String me_id);

	public MemberVO selectUser(String id);

	public void insertMember(MemberVO user);

	public void keepLogin(@Param("me_id")String me_id, @Param("me_session_id")String me_session_id, @Param("me_session_limit")Date me_session_limit);

	public MemberVO selectUserBySession(String me_session_id);

	public int updateMember(MemberVO dbUser);

	public void pubRegister(PublisherVO publisher);

	public ArrayList<PublisherVO> getPublisherList(@Param("cri")Criteria cri);

	public PublisherVO getPublisher(Integer pu_num);

	public void authRegister(AuthorVO author);

	public int getTotalCount(@Param("cri")Criteria cri);

	public ArrayList<AuthorVO> getAuthorList(@Param("cri")Criteria cri);

	public AuthorVO getAuthor(Integer au_num);

	public int updatePub(PublisherVO dbPub);

	public int updateAuth(AuthorVO dbAuth);

	public AuthorVO getAuthorInfo(String au_writer);

	public void booksRegi(BooksVO books);

	public ArrayList<BooksVO> getBooksList(@Param("cri")Criteria cri);

	public BooksVO getBooks(Integer bs_num);

	public int updateBooks(BooksVO dbBooks);
	
	ArrayList<AuthorVO> authorList(BigInteger re_bk_isbn);

	ArrayList<AuthorVO> subAuthorList(BigInteger re_bk_isbn);

	public int getTotalCountPublish(@Param("cri")Criteria cri);

	public int getTotalCountAuthor(@Param("cri")Criteria cri);

	public int getTotalCountBooks(@Param("cri")Criteria cri);

	public ArrayList<BooksVO> booksList(@Param("re_catagory")String re_catagory, @Param("cri")Criteria cri);

	public int getTotalCountGreenPoint(@Param("cri") Criteria cri);

	public ArrayList<BooksVO> getBooksSearch(@Param("cri") Criteria cri);

	public BooksVO getAuthorIntro(Integer bs_num);

	public int getTotalCountMyPage(@Param("cri") Criteria cri);

	public void updatePoint(@Param("me_id") String me_id, @Param("pr_use_point") Integer pr_use_point);

	public void updateCancelPoint(@Param("me_id") String me_id, @Param("pr_use_point") Integer pr_use_point);

	public void insertPoint(@Param("me_id") String me_id, @Param("or_green_point") Integer or_green_point);

	public void usePoint(@Param("me_id")String me_id, @Param("pr_use_point") Integer pr_use_point);

	public void insertCancelPoint(@Param("me_id") String me_id, @Param("pr_use_point") Integer pr_use_point);

	public void returnPoint(@Param("me_id") String me_id, @Param("po_point") Integer po_point);

	public ArrayList<PointVO> getPointList(@Param("me_id") String me_id, @Param("cri") Criteria cri);

	public void updateMemberPoint(@Param("po_me_id")String po_me_id, @Param("po_point") Integer po_point);

	public ArrayList<MemberVO> getMemberByEmail(String email);

	public MemberVO getMemberId(String id);





}