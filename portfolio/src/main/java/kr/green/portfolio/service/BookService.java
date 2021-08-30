package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.RegistrationVO;

public interface BookService {

	boolean bookRegister(BookVO book, MultipartFile file);

	ArrayList<BookVO> getBookList(Criteria cri);

	BookVO getBook(BigInteger bk_isbn);

	BookVO updateBook(BookVO book, MultipartFile file);

	int getTotalCount(Criteria cri);

	boolean regiBook(RegistrationVO registration);

	ArrayList<RegistrationVO> regiBookList(Criteria cri);

	RegistrationVO getRegiBook(Integer re_code);

	RegistrationVO updateRegi(RegistrationVO regi);

	ArrayList<BookVO> getChoice();

	RegistrationVO getRegi(BigInteger re_bk_isbn);

	int getTotalCountRegi(Criteria cri);

	ArrayList<BookVO> getRegiSale();

	ArrayList<BookVO> getRegistration(String re_catagory, Criteria cri);

	ArrayList<RegistrationVO> getRegiBookList(String re_catagory, Criteria cri);

	int getTotalCountCatagory(String re_catagory, Criteria cri);

	BookVO getBookToday();

	ArrayList<BookVO> getSearch(Criteria cri);

	int getTotalCountSearch(Criteria cri);

	ArrayList<BookVO> getBookAuthor(Integer bs_num);

}
