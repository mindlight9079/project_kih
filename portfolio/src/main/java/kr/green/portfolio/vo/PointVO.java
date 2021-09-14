package kr.green.portfolio.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class PointVO {
	private int po_num;
	private String po_me_id;
	private String po_contents;
	private int po_point;
	private Date po_date;
	private String po_or_num;
	
	public String getPoDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(po_date);
	}	
}
