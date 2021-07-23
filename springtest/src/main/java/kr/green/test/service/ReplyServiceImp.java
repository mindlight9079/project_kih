package kr.green.test.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import kr.green.test.dao.ReplyDAO;
import kr.green.test.pagination.Criteria;
import kr.green.test.vo.MemberVO;
import kr.green.test.vo.ReplyVO;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ReplyServiceImp implements ReplyService {

	private ReplyDAO replyDao;
	
	@Override
	public int insertReply(ReplyVO rvo) {
		if(rvo.getRp_me_id() == null || rvo.getRp_me_id().length() == 0)
			return 0;
		replyDao.insertReply(rvo);
		return 1;
	}

	@Override
	public ArrayList<ReplyVO> getReplyList(int rp_bd_num, Criteria cri) {
		return replyDao.getReplyList(rp_bd_num, cri);
	}

	@Override
	public int getTotalCount(int rp_bd_num) {
		return replyDao.getTotalCount(rp_bd_num);
	}

	@Override
	public String updateReply(ReplyVO reply, MemberVO user) {
		if(reply == null || reply.getRp_bd_num() <= 0) {
			return "NO_REPLY_FAIL";
		}
		if(user == null || user.getId() == null) {
			return "NO_USER";
		}
		ReplyVO rvo = replyDao.getReply(reply.getRp_num());
		if(rvo == null) {
			return "NO_REPLY_FAIL";
		}
		if(!rvo.getRp_me_id().equals(user.getId())) {
			return "NO_REPLY_FAIL";
		}
		rvo.setRp_content(reply.getRp_content());
		replyDao.updateReply(rvo);
		return "MODIFY_SUCCESS";
	}



}
