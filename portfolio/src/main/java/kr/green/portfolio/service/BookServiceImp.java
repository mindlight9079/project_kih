package kr.green.portfolio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.BookDAO;
import kr.green.portfolio.vo.BookVO;
import kr.green.portfolio.vo.MemberVO;

@Service
public class BookServiceImp implements BookService {
	
	@Autowired
	BookDAO bookDao;

	@Override
	public boolean bookRegister(BookVO book) {
		if(book == null)
			return false;
		MemberVO member = new MemberVO();
		if(member.getMe_grade() != "ADMIN")
			return false;
		bookDao.getBookInfo(book);
		return true;
		
	}

	



	
}
