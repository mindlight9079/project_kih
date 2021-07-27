package kr.green.test.dao;
 
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.green.test.vo.MemberVO;
 
public interface MemberDAO {

	public MemberVO getMember(@Param("id")String id);

	public boolean signup(@Param("user")MemberVO user);

	public void insertMember(@Param("user")MemberVO user);

	public void updateMember(@Param("user")MemberVO sUser);

	public void keeplogin(@Param("id")String id, @Param("session_id")String session_id, @Param("session_limit")Date session_limit);

	public MemberVO getMemberBySessionId(@Param("session_id")String session_id);

}
