package kr.green.portfolio.vo;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class OrderVO {
	private String or_num;
	private String or_me_id;
	private Date or_date;
	private String or_state;
	private String or_receiver;
	private BigInteger or_payment;
	private String or_pay_card;
	private int or_deliver;
	private int or_green_point;
	private String or_title;
	private int or_re_title;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date or_deli_date;
	private int or_use_point;
	private String or_pa_num;
	private String or_methods;
	private Date or_approved;
	private String or_name;
	private int or_sh_num;
	
	public String setOr_random_num() {
		java.util.Date now = new java.util.Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddhhssmm");
		String wdate = format.format(now);
		int min = 0;
		int max = 100;
		int order_num = (int)(Math.random()*(max-min+1)+min);
		return wdate+order_num;
	}
	
	public String getOrDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(or_date);
	}	
	
	public String getDeliDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(or_deli_date);
	}	
	
	public String getApprovedDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(or_approved);
	}	
	
}
