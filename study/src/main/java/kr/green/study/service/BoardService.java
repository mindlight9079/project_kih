package kr.green.study.service;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import kr.green.study.vo.BoardVO;
import kr.green.study.vo.FileVO;
import kr.green.study.vo.MemberVO;

public interface BoardService {

	ArrayList<BoardVO> getBoardList();

	BoardVO getBoard(Integer num);

	void insertBoard(BoardVO board, MultipartFile[] fileList, MemberVO user) throws Exception;

	void insertReplyBoard(BoardVO board, MemberVO user);

	void updateBoard(BoardVO board, MemberVO user, MultipartFile[] fileList, Integer[] fileNumList) throws Exception;

	void deleteBoard(Integer num, MemberVO user);

	void updateViews(Integer num);

	ArrayList<FileVO> getFileList(Integer num);

	ResponseEntity<byte[]> downloadFile(String fileName) throws IOException ;

}
