package kr.green.portfolio.vo;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class ParticularsVO {
	private int pr_num;
	private String pr_or_num;
	private BigInteger pr_bk_isbn;
	private Date pr_deli_date;
	private int pr_amount;
	
}
