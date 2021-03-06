package kr.green.test.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.green.test.pagination.Criteria;
import kr.green.test.pagination.PageMaker;
import kr.green.test.service.MemberService;
import kr.green.test.service.ReplyService;
import kr.green.test.vo.MemberVO;
import kr.green.test.vo.ReplyVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@RestController
public class ReplyController {
	
	private ReplyService replyService;
	private MemberService memberService;
	
	@PostMapping(value="/reply/ins")
	public String replyInsPost(@RequestBody ReplyVO rvo) {
		return replyService.insertReply(rvo) == 0 ? "FAIL" : "OK";
	}
	
	@GetMapping("/reply/list/{rp_bd_num}/{page}")
	public Map<String, Object> replyListGet(@PathVariable("rp_bd_num") int rp_bd_num, @PathVariable("page") int page){
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(page);
		Criteria cri = new Criteria(page,3);
		int totalCount = replyService.getTotalCount(rp_bd_num);
		PageMaker pm = new PageMaker(rp_bd_num, 3, cri);
		ArrayList<ReplyVO> list = replyService.getReplyList(rp_bd_num,cri);
		map.put("replyList", list);
		map.put("pm", pm);
		return map;
	}
	
	@PostMapping("/reply/mod")
	public String replyModPost(@RequestBody ReplyVO reply) {
		return replyService.updateReply(reply);
	}
	
	@PostMapping("/reply/del")
	public String replyDelPost(@RequestBody ReplyVO reply) {
		return replyService.deleteReply(reply);
	}
}
