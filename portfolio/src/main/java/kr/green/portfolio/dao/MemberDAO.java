package kr.green.portfolio.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.MemberVO;
 
public interface MemberDAO {
	
	public MemberVO getMember(String me_id);

	public MemberVO selectUser(String id);

	public void insertMember(MemberVO user);

	public void keepLogin(@Param("me_id")String me_id, @Param("me_session_id")String me_session_id, @Param("me_session_limit")Date me_session_limit);

	public MemberVO selectUserBySession(String me_session_id);

}