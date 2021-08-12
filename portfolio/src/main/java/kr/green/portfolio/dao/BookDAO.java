package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.BookVO;

public interface BookDAO {

	void getBookInfo(BookVO book);

	ArrayList<BookVO> getBookList(@Param("cri")Criteria cri);

	BookVO getBook(BigInteger bk_isbn);

	int updateBook(BookVO dbBook);

	int getTotalCount(@Param("cri")Criteria cri);
}
