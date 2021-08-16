package kr.green.portfolio.vo;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class RegistrationVO {
	private int re_code;
	private BigInteger re_bk_isbn;
	private String re_title;
	private int re_price;
	private int re_amount;
	private String re_catagory;
	private String re_contents;
	private String re_choice;
	public int getRe_price_point() {
		return (int)(re_price*0.05);
	}
}
