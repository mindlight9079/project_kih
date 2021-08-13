package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.RegistrationVO;

public interface BookDAO {

	void getBookInfo(BookVO book);

	ArrayList<BookVO> getBookList(@Param("cri")Criteria cri);

	BookVO getBook(BigInteger bk_isbn);

	int updateBook(BookVO dbBook);

	int getTotalCount(@Param("cri")Criteria cri);

	void regiBook(RegistrationVO registration);

	ArrayList<RegistrationVO> regiBookList(@Param("cri")Criteria cri);

	RegistrationVO getRegiBook(Integer re_code);

	void updateRegi(RegistrationVO dbRegi);

	ArrayList<BookVO> getChoice();
}
