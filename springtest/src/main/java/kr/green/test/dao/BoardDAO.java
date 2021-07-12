package kr.green.test.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.test.pagination.Criteria;
import kr.green.test.vo.BoardVO;

public interface BoardDAO {

	ArrayList<BoardVO> getBoardList(@Param("cri")Criteria cri);

	BoardVO getBoard(@Param("num")Integer num);

	int updateViews(@Param("board")BoardVO board);

	void registerBoard(@Param("board")BoardVO board);

	int updateBoard(@Param("board")BoardVO board);

	int getTotalCount(@Param("cri")Criteria cri);


}
