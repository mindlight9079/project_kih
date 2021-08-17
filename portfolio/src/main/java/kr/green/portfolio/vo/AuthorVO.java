package kr.green.portfolio.vo;

import lombok.Data;

@Data
public class AuthorVO {
	private int au_num;
	private String au_writer;
	private String au_title;
	private String au_contents;
	private String au_birth;
}
