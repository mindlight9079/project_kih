package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
}
