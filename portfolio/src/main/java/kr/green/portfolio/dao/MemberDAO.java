package kr.green.portfolio.dao;
 
import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.MemberVO;
 
public interface MemberDAO {
	
	public MemberVO getMember(String me_id);

	public MemberVO selectUser(String id);

	public void insertMember(MemberVO user);

}