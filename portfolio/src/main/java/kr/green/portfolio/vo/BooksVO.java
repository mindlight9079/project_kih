package kr.green.portfolio.vo;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class BooksVO {
	private int bs_num;
	private BigInteger bs_bk_isbn;
	private String bs_part;
	private String bs_name;
	private String bs_au_num;
	private String bs_title;
	private String bs_contents;
	private Date bs_birth;
}
