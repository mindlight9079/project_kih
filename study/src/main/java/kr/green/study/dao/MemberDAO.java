package kr.green.study.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.study.vo.MemberVO;

public interface MemberDAO {

	void insertMember(MemberVO user);

	MemberVO selectUser(String id);

}
