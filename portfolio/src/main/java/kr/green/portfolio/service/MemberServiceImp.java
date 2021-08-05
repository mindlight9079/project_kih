package kr.green.portfolio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.MemberDAO;
import kr.green.portfolio.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	MemberDAO memberDao;
	
	@Override
	public MemberVO login(MemberVO user) {
		if(user == null || user.getMe_id() == null) {
			return null;
		}
		MemberVO dbUser = memberDao.getMember(user.getMe_id());
		return dbUser;
		
	}

	@Override
	public boolean signup(MemberVO user) {
		if(user == null || memberDao.getMember(user.getMe_id())!= null) {
			return false;
		}
		memberDao.signup(user);
		return true;
	}

}
