package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.BookVO;

public interface BookService {

	boolean bookRegister(BookVO book, MultipartFile file);

	ArrayList<BookVO> getBookList(Criteria cri);

	BookVO getBook(BigInteger bk_isbn);

	BookVO updateBook(BookVO book, MultipartFile file);

	int getTotalCount(Criteria cri);
}
