package kr.green.test.dao;
 
import org.apache.ibatis.annotations.Param;

import kr.green.test.vo.MemberVO;
 
public interface MemberDAO {

	MemberVO getMember(@Param("id")String id);

	public boolean signup(@Param("user")MemberVO user);

	public void insertMember(@Param("user")MemberVO user);

}
