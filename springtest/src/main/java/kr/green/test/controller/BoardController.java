package kr.green.test.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.test.service.BoardService;
import kr.green.test.vo.BoardVO;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping (value="/board/*")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping (value="/list")
	public ModelAndView list(ModelAndView mv, String msg) {
		ArrayList<BoardVO> list = boardService.getBoardList();
		mv.addObject("list",list);
		mv.addObject("msg",msg);
		mv.setViewName("board/list");
		return mv;
	}
	
	@RequestMapping (value="/detail" )
	public ModelAndView detail(ModelAndView mv, Integer num, String msg) {
		boardService.updateViews(num);
		BoardVO board = boardService.getBoard(num);
		mv.addObject("msg",msg);
		mv.addObject("board",board);
		mv.setViewName("board/detail");
		return mv;
	}

	@RequestMapping (value="/register",method=RequestMethod.GET)
	public ModelAndView registerGet(ModelAndView mv) {
		mv.setViewName("board/register");
		return mv;
	}
	
	@RequestMapping (value="/register",method=RequestMethod.POST)
	public ModelAndView registerPost(ModelAndView mv, BoardVO board) {
	boardService.registerBoard(board);
		mv.setViewName("redirect:/board/list");
		return mv;
	}
	
	@RequestMapping (value="/update",method=RequestMethod.GET)
	public ModelAndView updateGet(ModelAndView mv, Integer num) {
		BoardVO board = boardService.getBoard(num);
		mv.addObject("board",board);
		mv.setViewName("board/update");
		return mv;
	}
	
	@RequestMapping (value="/update",method=RequestMethod.POST)
	public ModelAndView updatePost(ModelAndView mv, BoardVO board) {
		int res = boardService.updateBoard(board);
		String msg = res != 0 ? board.getNum()+"번 게시글이 수정되었습니다." : "없는 게시글입니다."; 
		mv.addObject("msg",msg);
		mv.addObject("num",board.getNum());
		mv.setViewName("redirect:/board/detail");
		return mv;
	}
	
	@RequestMapping (value="/delete",method=RequestMethod.POST)
	public ModelAndView deletePost(ModelAndView mv, Integer num) {
		int res = boardService.deleteBoard(num);
		if(res != 0) {
			mv.addObject("msg",num+"번 게시글을 삭제 했습니다.");
		} else {
			mv.addObject("msg","게시글이 없거나 이미 삭제되었습니다.");
		}
		mv.setViewName("redirect:/board/list");
		return mv;
	}
	
	
	
}
