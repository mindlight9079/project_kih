package kr.green.portfolio.dao;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.MemberVO;
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

}