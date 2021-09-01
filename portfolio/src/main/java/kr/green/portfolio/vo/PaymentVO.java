package kr.green.portfolio.vo;

import lombok.Data;

@Data
public class PaymentVO {
	private String pa_num;
	private String pa_methods;
	private String pa_name;
	private int pa_point;
}
