package kr.green.test.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.test.pagination.Criteria;
import kr.green.test.pagination.PageMaker;
import kr.green.test.service.BoardService;
import kr.green.test.service.MemberService;
import kr.green.test.vo.BoardVO;
import kr.green.test.vo.FileVO;
import kr.green.test.vo.MemberVO;
import kr.green.test.vo.RecommendVO;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping (value="/board/*")
public class BoardController {

	@Autowired
	BoardService boardService;
	@Autowired
	MemberService memberService;
	
	@RequestMapping (value="/list")
	public ModelAndView list(ModelAndView mv, String msg, Criteria cri) {
		cri.setPerPageNum(2);
		ArrayList<BoardVO> list = boardService.getBoardList(cri);
		//현재 페이지 정보(검색타입, 검색에 대한 총 게시글 수를 가져와야함.
		int totalCount = boardService.getTotalCount(cri);
		PageMaker pm = new PageMaker(totalCount,2,cri);
		mv.addObject("pm",pm);
		mv.addObject("list",list);
		mv.addObject("msg",msg);
		mv.setViewName("/template/board/list");
		return mv;
	}
	
	@RequestMapping (value="/detail" )
	public ModelAndView detail(ModelAndView mv, Integer num, String msg, HttpServletRequest request) {
		boardService.updateViews(num);
		BoardVO board = boardService.getBoard(num);
		mv.addObject("msg",msg);
		mv.addObject("board",board);
		mv.setViewName("/template/board/detail");
		ArrayList<FileVO> fileList = boardService.getFileVOList(num);
		mv.addObject("fileList",fileList);
		MemberVO user = memberService.getMember(request);
		RecommendVO rvo = boardService.getRecommend(num, user);
		mv.addObject("recommend",rvo);
		return mv;
	}

	@RequestMapping (value="/register",method=RequestMethod.GET)
	public ModelAndView registerGet(ModelAndView mv) {
		mv.setViewName("/template/board/register");
		return mv;
	}
	
	@RequestMapping (value="/register",method=RequestMethod.POST)
	public ModelAndView registerPost(ModelAndView mv, BoardVO board, HttpServletRequest request, MultipartFile[] files) {
		MemberVO user = memberService.getMember(request);
		board.setWriter(user.getId());
		boardService.registerBoard(board, user, files);
		mv.setViewName("redirect:/board/list");
		return mv;
	}
	
	@RequestMapping (value="/update",method=RequestMethod.GET)
	public ModelAndView updateGet(ModelAndView mv, Integer num, HttpServletRequest request) {
		//첨부파일 가져옴
		ArrayList<FileVO> fileList = boardService.getFileVOList(num);
		//화면에 첨부파일 전송
		mv.addObject("fileList",fileList);
		BoardVO board = boardService.getBoard(num);
		mv.addObject("board",board);
		mv.setViewName("/template/board/update");
		MemberVO user = memberService.getMember(request);
		if(board == null || !board.getWriter().equals(user.getId())) {
			mv.setViewName("redirect:/board/list");
		}
		return mv;
	}
	
	@RequestMapping (value="/update",method=RequestMethod.POST)
	public ModelAndView updatePost(ModelAndView mv, BoardVO board, HttpServletRequest request, MultipartFile[] files, Integer[] filenums) {
		MemberVO user = memberService.getMember(request);
		int res = boardService.updateBoard(board, user, files, filenums);
		String msg = "";
		if(res == 1)
			msg = board.getNum()+"번 게시글이 수정되었습니다.";
		else if(res == 0)
			msg = "없는 게시글입니다.";
		else if(res == -1) {
			msg = "잘못된 접근입니다.";
			mv.setViewName("redirect:/board/list");
		}
		mv.addObject("msg",msg);
		mv.addObject("num",board.getNum());
		if(!user.getId().equals(board.getWriter())) {
			mv.setViewName("redirect:/board/list");
		} else {
			boardService.updateBoard(board, user, files, filenums);
		}
		return mv;
	}
	
	@RequestMapping (value="/delete",method=RequestMethod.POST)
	public ModelAndView deletePost(ModelAndView mv, Integer num, HttpServletRequest request) {
		MemberVO user = memberService.getMember(request);
		int res = boardService.deleteBoard(num,user);
		if(res ==1) {
			mv.addObject("msg",num+"번 게시글을 삭제 했습니다.");
		} else if(res == 0){
			mv.addObject("msg","게시글이 없거나 이미 삭제되었습니다.");
		} else if(res == -1) {
			mv.addObject("msg","잘못된 접근입니다.");
		}
		mv.setViewName("redirect:/board/list");
		return mv;
	}	
	
	@ResponseBody
	@RequestMapping("/download")
	public ResponseEntity<byte[]> downloadFile(String fileName)throws Exception{
		return boardService.downloadFile(fileName);
	}
	
	@ResponseBody
	@GetMapping("/recommend/{board}/{state}")
	public String boardRecommend(@PathVariable("board") int board, @PathVariable("state") int state, HttpServletRequest request) {
		MemberVO user = memberService.getMember(request);
		return boardService.recommend(board,state,user);
	}
}
