package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.green.portfolio.dao.BookDAO;
import kr.green.portfolio.dao.MemberDAO;
import kr.green.portfolio.utils.UploadFileUtils;
import kr.green.portfolio.vo.BookVO;

@Service
public class BookServiceImp implements BookService {
	
	@Autowired
	BookDAO bookDao;
	@Autowired
	MemberDAO memberDao;
	
	private String uploadPath = "D:\\JAVA_TEST\\uploadfiles";
	
	@Override
	public boolean bookRegister(BookVO book, MultipartFile file) {
		if(book == null)
			return false;
		String name;
		try {
			name = UploadFileUtils.uploadFile(uploadPath, file.getName(), file.getBytes());
			book.setBk_mainImg(name);
			bookDao.getBookInfo(book);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}		
		return true;
	}

	@Override
	public ArrayList<BookVO> getBookList() {
		return bookDao.getBookList();
	}

	@Override
	public BookVO getBook(BigInteger bk_isbn) {
		if(bk_isbn == null)
			return null;
		BookVO book = bookDao.getBook(bk_isbn);
		return book;
	}

	@Override
	public BookVO getBookInfo(HttpServletRequest request) {
		if(request == null) {
			return null;
		}
		return (BookVO)request.getSession().getAttribute("book");
	}

	@Override
	public BookVO updateBook(BookVO book) {
		if(book == null) {
			return null;
		}
		BookVO dbBook = bookDao.getBook(book.getBk_isbn());
		if(dbBook == null) {
			return null;
		}
		dbBook.setBk_isbn(book.getBk_isbn());
		dbBook.setBk_title(book.getBk_title());
		dbBook.setBk_subtitle(book.getBk_subtitle());
		dbBook.setBk_au_writer(book.getBk_au_writer());
		dbBook.setBk_publish(book.getBk_publish());
		dbBook.setBk_page(book.getBk_page());
		dbBook.setBk_publish_date(book.getBk_publish_date());
		dbBook.setBk_pu_num(dbBook.getBk_pu_num());
		if(bookDao.updateBook(dbBook) == 0) {
			return null;
		}
		return dbBook;
	}	

}
