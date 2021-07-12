package kr.green.test.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.test.dao.BoardDAO;
import kr.green.test.pagination.Criteria;
import kr.green.test.vo.BoardVO;

@Service
public class BoardServiceImp implements BoardService {

@Autowired
	BoardDAO boardDao;

	@Override
	public ArrayList<BoardVO> getBoardList(Criteria cri) {
		return boardDao.getBoardList(cri);
	}

	@Override
	public BoardVO getBoard(Integer num) {
//		if(num == null) {
//			return null;
//		}
//		return boardDao.getBoard(num);
		return num == null ? null : boardDao.getBoard(num);
	}

	@Override
	public int updateViews(Integer num) {
		//다오에게 게시글 정보를 가져오라고 요청
		BoardVO board = boardDao.getBoard(num);
		if(board == null) {
			return 0;
		}
		board.setViews(board.getViews()+1);
		return boardDao.updateViews(board);
	}

	@Override
	public void registerBoard(BoardVO board) {
		if(board == null) {
			return;
		}
		boardDao.registerBoard(board);
	}

	@Override
	public int updateBoard(BoardVO board) {
		if(board == null) {
			return 0;
		}
		if(board.getValid() == null) {
			board.setValid("I");
		}
		BoardVO dbBoard = boardDao.getBoard(board.getNum());
		dbBoard.setContents(board.getContents());
		dbBoard.setTitle(board.getTitle());
		return boardDao.updateBoard(board);
		
	}

	@Override
	public int deleteBoard(Integer num) {
		if(num == null) {
			return 0;
		}
		BoardVO board = boardDao.getBoard(num);
		board.setValid("D");
		return boardDao.updateBoard(board);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return boardDao.getTotalCount(cri);
	}


}
