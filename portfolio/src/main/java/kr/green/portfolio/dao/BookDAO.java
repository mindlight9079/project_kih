package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.BooksVO;
import kr.green.portfolio.vo.OrderVO;
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

	RegistrationVO getRegi(BigInteger re_bk_isbn);

	void booksRegi(BooksVO books);

	int getTotalCountRegi(@Param("cri")Criteria cri);

	ArrayList<BookVO> getRegiSale();

	ArrayList<BookVO> getRegistration(@Param("re_catagory") String re_catagory, @Param("cri")Criteria cri);

	ArrayList<RegistrationVO> getRegiBookList(@Param("re_catagory")String re_catagory, @Param("cri")Criteria cri);

	int getTotalCatagory(@Param("re_catagory") String re_catagory, @Param("cri") Criteria cri);

	BookVO getBookToday();

	ArrayList<BookVO> getSearch(@Param("cri")Criteria cri);

	int getTotalCountSearch(@Param("cri") Criteria cri);

	ArrayList<BookVO> getBookAuthor(Integer bs_num);

	void updateAmount(@Param("bigInteger") BigInteger bigInteger, @Param("integer") Integer integer);

	void updateCancelAmount(@Param("bigInteger") BigInteger bigInteger, @Param("integer") Integer integer);

}
