package kr.green.test.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.test.vo.BoardVO;

public interface BoardDAO {

	ArrayList<BoardVO> getBoardList();

	BoardVO getBoard(@Param("num")Integer num);

	int updateViews(@Param("board")BoardVO board);

	void registerBoard(@Param("board")BoardVO board);

	int updateBoard(@Param("board")BoardVO board);


}
