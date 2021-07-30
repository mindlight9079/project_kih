package kr.green.study.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class BoardVO {
	private int num;
	private String title;
	private String contents;
	private String writer;
	private String valid;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date registered;
	private int views;	
	private String type;
	private int groupOrd;
	private int oriNo;
	
	public String getRegisteredDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(registered);
	}
}
