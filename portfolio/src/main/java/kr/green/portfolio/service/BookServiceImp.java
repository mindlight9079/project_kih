package kr.green.portfolio.service;

import java.math.BigInteger;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.green.portfolio.dao.BookDAO;
import kr.green.portfolio.dao.MemberDAO;
import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.utils.UploadFileUtils;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.RegistrationVO;

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
			name = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
			book.setBk_mainImg(name);
			bookDao.getBookInfo(book);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}		
		return true;
	}

	@Override
	public ArrayList<BookVO> getBookList(Criteria cri) {
		return bookDao.getBookList(cri);
	}

	@Override
	public BookVO getBook(BigInteger bk_isbn) {
		if(bk_isbn == null)
			return null;
		BookVO book = bookDao.getBook(bk_isbn);
		return book;
	}

	@Override
	public BookVO updateBook(BookVO book, MultipartFile file) {
		System.out.println(book);
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
		dbBook.setBk_pu_num(book.getBk_pu_num());
		dbBook.setBk_country(book.getBk_country());
		String name;
		if(file != null && file.getOriginalFilename().length() != 0) {
			try {
				name = UploadFileUtils.uploadFile(uploadPath,file.getOriginalFilename(), file.getBytes());
				dbBook.setBk_mainImg(name);
				
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}		
		}
		if(bookDao.updateBook(dbBook) == 0) {
			return null;
		}
		return dbBook;
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return bookDao.getTotalCount(cri);
	}

	@Override
	public boolean regiBook(RegistrationVO registration) {
		if(registration == null)
			return false;
		bookDao.regiBook(registration);
		return true;
	}

	@Override
	public ArrayList<RegistrationVO> regiBookList(Criteria cri) {
		return bookDao.regiBookList(cri);
	}

	@Override
	public RegistrationVO getRegiBook(Integer re_code) {
		if(re_code == null)
			return null;
		RegistrationVO regi = bookDao.getRegiBook(re_code);
		return regi;
	}

	@Override
	public RegistrationVO updateRegi(RegistrationVO regi) {
		System.out.println(regi);
		if(regi == null)
			return null;
		RegistrationVO dbRegi = bookDao.getRegiBook(regi.getRe_code());
		if(dbRegi == null)
			return null;
		dbRegi.setRe_amount(regi.getRe_amount());
		dbRegi.setRe_bk_isbn(regi.getRe_bk_isbn());
		dbRegi.setRe_catagory(regi.getRe_catagory());
		dbRegi.setRe_code(regi.getRe_code());
		dbRegi.setRe_contents(regi.getRe_contents());
		dbRegi.setRe_price(regi.getRe_price());
		dbRegi.setRe_title(regi.getRe_title());
		dbRegi.setRe_choice(regi.getRe_choice());
		bookDao.updateRegi(dbRegi);
		return dbRegi;
	}

	@Override
	public ArrayList<BookVO> getChoice() {
		return bookDao.getChoice();
	}

	@Override
	public RegistrationVO getRegi(BigInteger re_bk_isbn) {
		if(re_bk_isbn == null)
			return null;
		RegistrationVO regi = bookDao.getRegi(re_bk_isbn);
		return regi;
	}

	@Override
	public int getTotalCountRegi(Criteria cri) {
		return bookDao.getTotalCountRegi(cri);
	}

	@Override
	public ArrayList<BookVO> getRegiSale() {
		return bookDao.getRegiSale();
	}

	@Override
	public ArrayList<BookVO> getRegistration(String re_catagory, Criteria cri) {
		if(re_catagory == null)
			return null;
		return bookDao.getRegistration(re_catagory, cri);
	}

	@Override
	public ArrayList<RegistrationVO> getRegiBookList(String re_catagory, Criteria cri) {
		if(re_catagory == null)
			return null;
		return bookDao.getRegiBookList(re_catagory, cri);
	}

	@Override
	public int getTotalCountCatagory(String re_catagory, Criteria cri) {
		return bookDao.getTotalCatagory(re_catagory, cri);
	}

	@Override
	public BookVO getBookToday() {
		return bookDao.getBookToday();
	}

	@Override
	public ArrayList<BookVO> getSearch(Criteria cri) {
		return bookDao.getSearch(cri);
	}

	@Override
	public int getTotalCountSearch(Criteria cri) {
		return bookDao.getTotalCountSearch(cri);
	}

	@Override
	public ArrayList<BookVO> getBookAuthor(Integer bs_num) {
		if(bs_num == null) {
			return null;
		}
		return bookDao.getBookAuthor(bs_num);
	}

	@Override
	public void updateAmount(BigInteger[] isbn, Integer[] pr_amount) {
		if(isbn == null && pr_amount == null)
			return;
		for(int i=0; i<isbn.length; i++) {
			bookDao.updateAmount(isbn[i], pr_amount[i]);
		}
		
	}


}
