package kr.green.portfolio.vo;

import java.math.BigInteger;
import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
	private BigInteger bk_isbn;
	private String bk_title;
	private String bk_subtitle;
	private String bk_au_writer;
	private String bk_publish;
	private int bk_page;
	private Date bk_publish_date;
	private String bk_mainImg;
	private String bk_mainUpload;
	private String bk_pu_num;
	
}
