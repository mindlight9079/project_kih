package kr.green.spring.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.pagination.PageMaker;
import kr.green.spring.service.BoardService;
import kr.green.spring.service.MemberService;
import kr.green.spring.vo.BoardVO;
import kr.green.spring.vo.MemberVO;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/board/list")
	public ModelAndView boardList(ModelAndView mv, Criteria cri) {
		log.info(cri);
		PageMaker pm = new PageMaker();
		cri.setPerPageNum(2);
		pm.setCriteria(cri);
		pm.setDisplayPageNum(2);
		int totalCount = boardService.getTotalCount(cri);
		pm.setTotalCount(totalCount);
		pm.calcData();
		log.info(pm);
		//서비스에게 모든 게시글을 가져오라고 시킴
		ArrayList<BoardVO> list = boardService.getBoardList(cri);
		//화면에 모든 게시글을 전송
		mv.addObject("list",list);
		mv.addObject("pm",pm);
		mv.setViewName("/template/board/list");
		return mv;
	}
	
	@RequestMapping(value="/board/detail")
	public ModelAndView boardDetail(ModelAndView mv, Integer num) {
		System.out.println(num);
		//게시글을 가져오기 전 조회수를 증가
		//서비스에게 게시글 번호를 주면서 게시글 조회수를 1증가하라고 시킴
		boardService.updateViews(num);
		//서비스에게 번호를 주면서 게시글을 가져오라고 시킴
		BoardVO board = boardService.getBoard(num);
		//가져온 게시글을 화면에 전달, 이름은 board로
		mv.addObject("board",board);
		System.out.println(board);
		mv.setViewName("/template/board/detail");
		return mv;
	}
	
	@RequestMapping(value="/board/register", method=RequestMethod.GET)
	public ModelAndView boardRegisterGet(ModelAndView mv) {
		mv.setViewName("/template/board/register");
		return mv;
	}
	
	//화면에서 보내준 제목, 작성자, 내용을 받아서 콘솔에 출력
	@RequestMapping(value="/board/register", method=RequestMethod.POST)
	public ModelAndView boardRegisterPost(ModelAndView mv, BoardVO board, HttpServletRequest request) {
		MemberVO user = memberService.getMember(request);
		board.setWriter(user.getId());
		//서비스에게 게시글 정보(제목, 작성자, 내용)를 주면서 게시글을 등록하라고 시킴
		boardService.insertBoard(board);
		mv.setViewName("redirect:/board/list");
		return mv;
	}
	
	@RequestMapping(value="/board/modify", method=RequestMethod.GET)
	public ModelAndView boardModifyGet(ModelAndView mv, Integer num, HttpServletRequest request) {
		BoardVO board = boardService.getBoard(num);
		mv.addObject("board",board);
		mv.setViewName("/template/board/modify");
		MemberVO user = memberService.getMember(request);
		if(board == null || !board.getWriter().equals(user.getId())) {
			mv.setViewName("redirect:/board/list");
		}
		return mv;
	}
	
	@RequestMapping(value="/board/modify", method=RequestMethod.POST)
	public ModelAndView boardModifyPost(ModelAndView mv, BoardVO board, HttpServletRequest request) {
		//서비스에게 게시글을 주면서 수정하라고 요청
		boardService.updateBoard(board);
		//detail로 이동
		mv.addObject("num",board.getNum());
		mv.setViewName("redirect:/board/modify");
		MemberVO user = memberService.getMember(request);
		if(!user.getId().equals(board.getWriter())) {
			mv.setViewName("redirect:/board/list");
		} else {
			//서비스에게 게시글을 주면서 수정하라고 요청
			boardService.updateBoard(board);
		}
			
		return mv;
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public ModelAndView boarddeleteGet(ModelAndView mv, Integer num, HttpServletRequest request) {
		MemberVO user = memberService.getMember(request);
		boardService.deleteBoard(num, user);
		mv.setViewName("redirect:/board/list");
		return mv;
	}	
}
