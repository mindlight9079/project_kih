package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;

import kr.green.portfolio.vo.BookVO;

public interface BookDAO {

	void getBookInfo(BookVO book);

	ArrayList<BookVO> getBookList();

	BookVO getBook(BigInteger bk_isbn);

	int updateBook(BookVO dbBook);
}
