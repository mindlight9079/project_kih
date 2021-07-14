package kr.green.test.service;

import java.util.ArrayList;

import kr.green.test.pagination.Criteria;
import kr.green.test.vo.BoardVO;
import kr.green.test.vo.MemberVO;

public interface BoardService {

	ArrayList<BoardVO> getBoardList(Criteria cri);

	BoardVO getBoard(Integer num);

	int updateViews(Integer num);

	void registerBoard(BoardVO board, MemberVO user);

	int updateBoard(BoardVO board, MemberVO user);

	int deleteBoard(Integer num, MemberVO user);

	int getTotalCount(Criteria cri);


	
}
