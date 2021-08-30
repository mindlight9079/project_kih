package kr.green.portfolio.vo;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private String or_num;
	private String or_me_id;
	private Date or_date;
	private String or_state;
	private String or_receiver;
	private BigInteger or_payment;
	
	public String setOr_random_num() {
		java.util.Date now = new java.util.Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String wdate = format.format(now);
		int min = 0;
		int max = 100;
		int order_num = (int)(Math.random()*(max-min+1)+min);
		return wdate+order_num;
	}
}
