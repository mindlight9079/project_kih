package kr.green.portfolio.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private int or_num;
	private String or_me_id;
	private Date or_date;
	private String or_address;
	private String or_state;
	private String or_receiver;
}
