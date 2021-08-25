package kr.green.portfolio.service;


import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.util.WebUtils;

import kr.green.portfolio.dao.MemberDAO;
import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.AuthorVO;
import kr.green.portfolio.vo.BooksVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.PublisherVO;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	MemberDAO memberDao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
		
	@Override
	public MemberVO login(MemberVO user) {
		if(user == null || user.getMe_id() == null) {
			return null;
		}
		MemberVO dbUser = memberDao.getMember(user.getMe_id());
		if(dbUser == null)
			return null;
		if(user.getMe_password() == null || !passwordEncoder.matches(user.getMe_password(), dbUser.getMe_password()))
			return null;
		dbUser.setUseCookie(user.getUseCookie());
		return dbUser;
		
	}

	@Override
	public boolean signup(MemberVO user) {
		if(user == null)
			return false;
		String idRegex = "^[a-z0-9_-]{5,20}$";
		if(user.getMe_id() == null || !Pattern.matches(idRegex, user.getMe_id()) )
			return false;
		String pwRegex = "^[a-zA-Z0-9!@#]{8,16}$";
		if(user.getMe_password() == null || !Pattern.matches(pwRegex, user.getMe_password()))
			return false;
		String emailRegex = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
		if(user.getMe_email()== null || !Pattern.matches(emailRegex, user.getMe_email()))
			return false;
		if(user.getMe_name() == null || user.getMe_name().trim().length() == 0)
			return false;
		if(user.getMe_gender() == null || !(user.getMe_gender().equals("F")||user.getMe_gender().equals("M")))
			return false;
		String encPw = passwordEncoder.encode(user.getMe_password());
		user.setMe_password(encPw);
		memberDao.insertMember(user);
		return true;
	}


	@Override
	public Object getMember(String id) {
		String idRegex = "^[a-z0-9_-]{5,20}$";
		if(id == null || !Pattern.matches(idRegex, id) )
			return "NO";
		if(memberDao.selectUser(id) != null)
			return "IMPOSSIBLE";
		return "POSSIBLE";
	}

	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		if(request == null || response == null)
			return;
		MemberVO user = getMemberByRequest(request);
		if(user == null)
			return;
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.invalidate();
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		if(loginCookie == null)
			return ;
		loginCookie.setPath("/");
		loginCookie.setMaxAge(0);
		response.addCookie(loginCookie);
		keepLogin(user.getMe_id(), "none", new Date());
	}

	private MemberVO getMemberByRequest(HttpServletRequest request) {
		if(request == null)
			return null;
		return (MemberVO)request.getSession().getAttribute("user");
	}

	@Override
	public void keepLogin(String me_id, String me_session_id, Date me_session_limit) {
		if(me_id == null)
			return;
		memberDao.keepLogin(me_id, me_session_id,me_session_limit);
		
	}

	@Override
	public MemberVO getMemberByCookie(String me_session_id) {
		if(me_session_id == null)
			return null;
		return memberDao.selectUserBySession(me_session_id);
	}

	@Override
	public MemberVO getMemberInfo(HttpServletRequest request) {
		if(request == null) {
			return null;
		}
		return (MemberVO)request.getSession().getAttribute("user");
	}

	@Override
	public MemberVO updateMember(MemberVO user) {
		if(user == null) {
			return null;
		}
		
		String emailRegex = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
		if(user.getMe_email()== null || !Pattern.matches(emailRegex, user.getMe_email()))
			return null;
		if(user.getMe_name() == null || user.getMe_name().trim().length() == 0)
			return null;
		if(user.getMe_gender() == null || !(user.getMe_gender().equals("F")||user.getMe_gender().equals("M")))
			return null;
		
		MemberVO dbUser = memberDao.getMember(user.getMe_id());
		if(dbUser == null) {
			return null;
		}
		
		dbUser.setMe_gender(user.getMe_gender());
		dbUser.setMe_email(user.getMe_email());
		dbUser.setMe_nickname(user.getMe_nickname());
		dbUser.setMe_phone(user.getMe_phone());
		
		
		String pwRegex = "^[a-zA-Z0-9!@#]{8,16}$";
		if(user.getMe_password() != null && !user.getMe_password().equals("") && Pattern.matches(pwRegex, user.getMe_password())) {
			String encodePw = passwordEncoder.encode(user.getMe_password());
			dbUser.setMe_password(encodePw);
		}else if(!user.getMe_password().equals(""))
			return null;
		
		if(user.getMe_address() != null && user.getMe_address().trim().length()>3) {
			dbUser.setMe_address(user.getMe_address());
		} 
		if(user.getMe_jAddress() != null && user.getMe_jAddress().trim().length()>3) {
			dbUser.setMe_jAddress(user.getMe_jAddress());
		}		
		if(user.getMe_birth() != null && user.getMe_birth().trim().length()>4) {
			dbUser.setMe_birth(user.getMe_birth());
		}
		
		if(memberDao.updateMember(dbUser) == 0)
			return null;
		return dbUser;
	}

	@Override
	public boolean pubRegister(PublisherVO publisher) {
		if(publisher == null)
			return false;
		memberDao.pubRegister(publisher);
		return true;
	}

	@Override
	public ArrayList<PublisherVO> getPublisherList(Criteria cri) {
		return memberDao.getPublisherList(cri);
	}

	@Override
	public PublisherVO getPublisher(Integer pu_num) {
		if(pu_num == null)
			return null;
		PublisherVO publish = memberDao.getPublisher(pu_num);
		return publish;
	}

	@Override
	public boolean authRegister(AuthorVO author) {
		if(author == null)
			return false;
		memberDao.authRegister(author);
		return true;
	}
	@Override
	public ArrayList<AuthorVO> getAuthorList(Criteria cri) {
		return memberDao.getAuthorList(cri);
	}

	@Override
	public AuthorVO getAuthor(Integer au_num) {
		if(au_num == null)
			return null;
		AuthorVO author = memberDao.getAuthor(au_num);
		return author;
	}
	
	@Override
	public int getTotalCountPublish(Criteria cri) {
		return memberDao.getTotalCountPublish(cri);
	}
	
	@Override
	public PublisherVO updatePub(PublisherVO publisher) {
		if(publisher == null) {
			return null;
		}
		PublisherVO dbPub = memberDao.getPublisher(publisher.getPu_num());
		if(dbPub == null) {
			return null;
		}
		dbPub.setPu_num(publisher.getPu_num());
		dbPub.setPu_name(publisher.getPu_name());
		dbPub.setPu_phone(publisher.getPu_phone());
		dbPub.setPu_ceo(publisher.getPu_ceo());
		if(memberDao.updatePub(dbPub) == 0) {
			return null;
		}
		return dbPub;
	}

	@Override
	public int getTotalCountAuthor(Criteria cri) {
		return memberDao.getTotalCountAuthor(cri);
	}

	@Override
	public AuthorVO updateAuth(AuthorVO author) {
		if(author == null)
			return null;
		AuthorVO dbAuth = memberDao.getAuthor(author.getAu_num());
		if(dbAuth == null)	
			return null;
		dbAuth.setAu_num(author.getAu_num());
		dbAuth.setAu_birth(author.getAu_birth());
		dbAuth.setAu_contents(author.getAu_contents());
		dbAuth.setAu_title(author.getAu_title());
		dbAuth.setAu_writer(author.getAu_writer());
		if(memberDao.updateAuth(dbAuth) == 0)
			return null;		
		return dbAuth;
	}

	@Override
	public boolean booksRegi(BooksVO books) {
		if(books == null)
			return false;
		memberDao.booksRegi(books);
		return true;
	}

	@Override
	public ArrayList<BooksVO> getbooksList(Criteria cri) {
		return memberDao.getBooksList(cri);
	}

	@Override
	public BooksVO getBooks(Integer bs_num) {
		if(bs_num == null)
			return null;
		BooksVO books = memberDao.getBooks(bs_num);
		return books;
	}

	@Override
	public BooksVO updateBooks(BooksVO books) {
		System.out.println(books);
		if(books == null)
			return null;
		BooksVO dbBooks = memberDao.getBooks(books.getBs_num());
		if(dbBooks == null)
			return null;
		dbBooks.setBs_au_num(books.getBs_au_num());
		dbBooks.setBs_bk_isbn(books.getBs_bk_isbn());
		dbBooks.setBs_name(books.getBs_name());
		dbBooks.setBs_num(books.getBs_num());
		dbBooks.setBs_part(books.getBs_part());
		if(memberDao.updateBooks(dbBooks) == 0)
			return null;	
		return dbBooks;
	}
	
	@Override
	public ArrayList<AuthorVO> authorList(BigInteger re_bk_isbn) {
		return memberDao.authorList(re_bk_isbn);
	}

	@Override
	public ArrayList<AuthorVO> subAuthorList(BigInteger re_bk_isbn) {
		return memberDao.subAuthorList(re_bk_isbn);
	}

	@Override
	public int getTotalCountBooks(Criteria cri) {
		return memberDao.getTotalCountBooks(cri);
	}

	@Override
	public ArrayList<BooksVO> booksList(String re_catagory, Criteria cri) {
		if(re_catagory == null)
			return null;
		return memberDao.booksList(re_catagory, cri);
	}


}
