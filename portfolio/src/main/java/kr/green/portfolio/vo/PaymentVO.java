package kr.green.portfolio.vo;

import lombok.Data;

@Data
public class PaymentVO {
	private String pa_num;
	private String pa_methods;
	private String pa_name;
	private String pa_or_num;
	private Long pa_point;
}
