package kr.green.portfolio.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.BookService;
import kr.green.portfolio.service.CartService;
import kr.green.portfolio.service.MemberService;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;
import kr.green.portfolio.vo.RegistrationVO;
import kr.green.portfolio.vo.ShippingVO;


@Controller
public class CartController {

	@Autowired
	CartService cartService;
	@Autowired
	BookService bookService;
	@Autowired
	MemberService memberService;
		
	@RequestMapping(value="/order/cart")
	public ModelAndView getCartList (ModelAndView mv, HttpSession session, Integer ca_re_code) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		ArrayList<CartVO> cartList = cartService.getCartList(member);
		mv.addObject("cartList", cartList);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart", method=RequestMethod.POST)
	public String addCart(@RequestBody CartVO cart, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String result = "0";
		if(member != null) {
			cart.setCa_me_id(member.getMe_id());
			cartService.addCart(cart);
			result = "1";
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart/delete", method=RequestMethod.POST)
	public int deleteCart(@RequestBody CartVO cart, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String userId = member.getMe_id();
		int result = 0;
		if(member != null) {
			cart.setCa_me_id(userId);
			cartService.deleteCart(cart);
			result = 1;
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart/update", method=RequestMethod.POST)
	public String updateCart(@RequestBody CartVO cart, HttpSession session) {
		//?????? ????????? ????????????.(????????????)
		//???????????? ????????? ?????? ???????????? db?????? ????????????. 
		//?????? ????????? ????????? ????????????.
		//?????? ????????? ???????????? ????????? ??????????????? ????????? ???????????? ??????
		//?????? ????????? ???????????? ????????? ??????????????? ?????? ???????????? ????????????
		MemberVO member = (MemberVO)session.getAttribute("user");
		String userId = member.getMe_id();
		String result = "FAIL";
		int amount = cart.getCa_amount();
		RegistrationVO dbRegi = bookService.getRegiBook(cart.getCa_re_code());
		cart.setCa_me_id(userId);
		if(member != null && amount > dbRegi.getRe_amount()) {
			cart.setCa_amount(dbRegi.getRe_amount());
			result = "OK1";
		} else if(member != null && amount <= dbRegi.getRe_amount()) {
			cart.setCa_amount(amount);
			result = "OK2";
		}
		cartService.updateCart(cart);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/cart/stock")
	public RegistrationVO stockCheck(@RequestBody CartVO cart, HttpSession session) {
		RegistrationVO regi = bookService.getRegiBook(cart.getCa_re_code());
		return regi;
	}
	
	@RequestMapping(value="/order/payment")
	public ModelAndView getPayment (ModelAndView mv, HttpSession session, Integer[] ca_num, BigInteger isbn, Integer amount) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		ArrayList<CartVO> paymentList = null;
		if(ca_num != null && ca_num.length != 0)
			paymentList = cartService.getPaymentList(ca_num, member);
		else {
			paymentList = cartService.getPaymentList(isbn, amount);
		}		
		mv.addObject("paymentList", paymentList);
		mv.addObject("member",member);
		return mv;
	}
	
	@RequestMapping(value="/order/address")
	public ModelAndView recentAddress (ModelAndView mv, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String userId = member.getMe_id();
		ArrayList<ShippingVO> shipping = cartService.selectShipping(userId);
		mv.addObject("shipping", shipping);
		mv.setViewName("/order/address");
		return mv;
	}

	@RequestMapping(value="/order/cartRegister", method=RequestMethod.POST )
	public ModelAndView CartListget (ModelAndView mv, BigInteger[] checkList, Integer[] cartAmount, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		for(BigInteger tmp : checkList) {
			System.out.println("?????? : "+tmp);
		}
		for(Integer tmp : cartAmount) {
			System.out.println("?????? : "+tmp);
		}
		String ca_me_id = member.getMe_id();
		cartService.getCartRegister(checkList, cartAmount, ca_me_id);
		mv.setViewName("redirect:/order/cart");
		return mv;
	}
	
	@RequestMapping(value="/order/pointexchange")
	public ModelAndView pointExchagne (ModelAndView mv) {
		mv.setViewName("/order/pointexchange");
		return mv;
	}
	
	@RequestMapping(value="/order/payfinished", method=RequestMethod.POST)
	public ModelAndView payFinishedPost (ModelAndView mv, HttpSession session, String partner_order_id, BigInteger[] isbn, Integer[] pr_amount, Integer pr_use_point, Integer or_green_point) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		cartService.insertParticulars(partner_order_id, isbn, pr_amount, pr_use_point);
		bookService.updateAmount(isbn, pr_amount);
		cartService.updateValid(member.getMe_id(), isbn);
		memberService.updatePoint(member.getMe_id(), pr_use_point);
		memberService.usePoint(member.getMe_id(), pr_use_point);
		mv.setViewName("redirect:/");
		return mv;
	}
	
	@RequestMapping(value="/order/payfinished", method=RequestMethod.GET)
	public ModelAndView payFinishedGet (ModelAndView mv, HttpServletRequest request, String pg_token, String partner_order_id) throws ParseException {
		String partner_user_id = ((MemberVO)request.getSession().getAttribute("user")).getMe_id();
		String tid = (String) request.getSession().getAttribute("tid");
		
		try {
			
			URL address = new URL("https://kapi.kakao.com/v1/payment/approve");
			try {
				HttpURLConnection serverConnect = (HttpURLConnection) address.openConnection();
				serverConnect.setRequestMethod("POST");
				serverConnect.setRequestProperty("Authorization", "KakaoAK 740e4771a6bc8cb24fc7999d91ff3218");
				serverConnect.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				serverConnect.setDoOutput(true);
				OutputStream giver = serverConnect.getOutputStream();
				String parameter = "cid=TC0ONETIME" // ????????? ??????
						+ "&partner_order_id="+partner_order_id// ????????? ????????????
						+ "&partner_user_id="+partner_user_id // ????????? ?????? id
						+ "&tid="+tid
						+ "&pg_token="+pg_token;
				DataOutputStream dataGive = new DataOutputStream(giver);
				dataGive.writeBytes(parameter);
				dataGive.close();				
				int result = serverConnect.getResponseCode();
				InputStream taker;
				if(result == 200) {
					taker = serverConnect.getInputStream();
				} else {
					taker = serverConnect.getErrorStream();
				}
				System.out.println("????????? :"+result);
				InputStreamReader reader = new InputStreamReader(taker);
				BufferedReader change = new BufferedReader(reader);
				String res = change.readLine();
				
				JSONObject jsonObj = stringToJson(res);
				String approved_at = (String) jsonObj.get("approved_at");
				String payment_method_type = (String) jsonObj.get("payment_method_type");
				
				JSONObject amount = (JSONObject) jsonObj.get("amount");
				Long point = (Long) amount.get("point");

				System.out.println(res);
				
				cartService.getOrder(partner_order_id);
								
				String me_name = ((MemberVO)request.getSession().getAttribute("user")).getMe_name();
				cartService.insertPayment(tid, payment_method_type, me_name, partner_order_id, point, approved_at);
				
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		mv.addObject("partner_order_id", partner_order_id);
		mv.setViewName("/order/payfinished");
		return mv; 
	}
		
	@RequestMapping("/order/kakaopay")
	@ResponseBody
	public String kakaopay(HttpServletRequest request, HttpSession session, OrderVO order, ShippingVO shipping) throws ParseException {
		MemberVO member = (MemberVO)session.getAttribute("user");
		if(member != null && member.getMe_id().equals(order.getOr_me_id())) {
			cartService.insertShipping(shipping);
			order.setOr_sh_num(shipping.getSh_num());
			cartService.insertPayFinished(order);
			//memberService.insertPoint(member.getMe_id(), order.getOr_green_point());
		}
		
		try {
			
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			try {
				HttpURLConnection serverConnect = (HttpURLConnection) address.openConnection();
				serverConnect.setRequestMethod("POST");
				serverConnect.setRequestProperty("Authorization", "KakaoAK 740e4771a6bc8cb24fc7999d91ff3218");
				serverConnect.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				serverConnect.setDoOutput(true);
				OutputStream giver = serverConnect.getOutputStream();
				String parameter = "cid=TC0ONETIME" // ????????? ??????
						+ "&partner_order_id="+order.getOr_num()// ????????? ????????????
						+ "&partner_user_id="+order.getOr_me_id() // ????????? ?????? id
						+ "&item_name=GreenBookStore" // ?????????
						+ "&quantity=1"// ?????? ??????
						+ "&total_amount="+order.getOr_payment() // ??? ??????
						+ "&vat_amount=200" // ?????????
						+ "&tax_free_amount=0" // ?????? ????????? ??????
						+ "&approval_url=http://kih9079.cafe24.com/order/payfinished?partner_order_id="+order.getOr_num()// ?????? ?????? ???
						+ "&fail_url=http://kih9079.cafe24.com/order/payment" // ?????? ?????? ???
						+ "&cancel_url=http://kih9079.cafe24.com/order/payment"; // ?????? ?????? ???
				DataOutputStream dataGive = new DataOutputStream(giver);
				dataGive.writeBytes(parameter);
				dataGive.close();				
				int result = serverConnect.getResponseCode();
				InputStream taker;
				if(result == 200) {
					taker = serverConnect.getInputStream();
				} else {
					taker = serverConnect.getErrorStream();
				}
				InputStreamReader reader = new InputStreamReader(taker);
				BufferedReader change = new BufferedReader(reader);
				String res = change.readLine();
				JSONParser parser = new JSONParser();
				Object obj = parser.parse( res );
				JSONObject jsonObj = (JSONObject) obj;
				String tid =(String) jsonObj.get("tid");
				request.getSession().setAttribute("tid", tid);
				return res;
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}"; 
	}
	@ResponseBody
	@RequestMapping(value="/order/kakaopay/cancel")
	public String cancelKakaopay (ModelAndView mv, HttpSession session, String pa_num, String or_num, BigInteger[] pr_bk_isbn, Integer[] pr_amount, Integer pr_use_point, String me_id, Integer po_point) throws ParseException {
		OrderVO dbOrder = cartService.getOrderInfo(or_num);
		MemberVO member = (MemberVO)session.getAttribute("user");
		try {
			
			URL address = new URL("https://kapi.kakao.com/v1/payment/cancel");
			try {
				HttpURLConnection serverConnect = (HttpURLConnection) address.openConnection();
				serverConnect.setRequestMethod("POST");
				serverConnect.setRequestProperty("Authorization", "KakaoAK 740e4771a6bc8cb24fc7999d91ff3218");
				serverConnect.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				serverConnect.setDoOutput(true);
				OutputStream giver = serverConnect.getOutputStream();
				String parameter = "cid=TC0ONETIME" // ????????? ??????
						+ "&tid="+pa_num
						+ "&cancel_amount="+dbOrder.getOr_payment()
						+ "&cancel_tax_free_amount=0" 
						+ "&cancel_vat_amount=200";
				DataOutputStream dataGive = new DataOutputStream(giver);
				dataGive.writeBytes(parameter);
				dataGive.close();				
				int result = serverConnect.getResponseCode();
				InputStream taker;
				if(result == 200) {
					taker = serverConnect.getInputStream();
				} else {
					taker = serverConnect.getErrorStream();
				}
				if(result == 400) {
					return "FAIL";
				}
				System.out.println("????????? :"+result);
				InputStreamReader reader = new InputStreamReader(taker);
				BufferedReader change = new BufferedReader(reader);
				String res = change.readLine();
				JSONObject jsonObj = stringToJson(res);
				System.out.println(res);
				cartService.updateCancel(or_num);
				bookService.updateCancelAmount(pr_bk_isbn, pr_amount);
				if(member.getMe_grade().equals("ADMIN")) {
					memberService.updateCancelPoint(me_id, pr_use_point);
					memberService.insertCancelPoint(me_id, pr_use_point);
					//memberService.returnPoint(me_id, po_point);
				}else {
					memberService.updateCancelPoint(member.getMe_id(),pr_use_point);
					memberService.insertCancelPoint(member.getMe_id(), pr_use_point);
					//memberService.returnPoint(member.getMe_id(), po_point);
					
				}
				
			} catch (IOException e) {
				e.printStackTrace();
				return "FAIL";
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
				return "FAIL";
		}
		return "OK"; 
	}
	
	private JSONObject stringToJson(String res) {
		JSONParser parser = new JSONParser();
		Object obj = null;
		try {
			obj = parser.parse( res );
		} catch (ParseException e) {
			e.printStackTrace();
		}
		JSONObject jsonObj = (JSONObject) obj;
		return jsonObj;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/order/inicis")
	public String payInicis(OrderVO order, ShippingVO shipping, String apply_num, String pay_method, String paid_at, String imp_uid, HttpSession session, HttpServletRequest request) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String me_name = ((MemberVO)request.getSession().getAttribute("user")).getMe_name();
		String result = "0";
		if(member != null && member.getMe_id().equals(order.getOr_me_id())) {
			cartService.insertShipping(shipping);
			order.setOr_sh_num(shipping.getSh_num());
			cartService.insertPayFinished(order);
			cartService.updateOrderState(order.getOr_num());
			//memberService.insertPoint(member.getMe_id(), order.getOr_green_point());
			
			long timestamp = Long.parseLong(paid_at);
		    Date date = new java.util.Date(timestamp*1000L); 
		    SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		    sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT+9")); 
		    String formattedDate = sdf.format(date);
		    
			cartService.insertPaymentInic(apply_num, pay_method, me_name, order.getOr_num(), formattedDate, imp_uid);
			result = ""+order.getOr_num();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/order/inicis/cancel")
	public String inicisCancel(String imp_uid, Integer or_payment, String or_num, BigInteger[] pr_bk_isbn, Integer[] pr_amount, Integer pr_use_point, HttpSession session, String me_id, Integer po_point) throws IOException, ParseException {
		MemberVO member = (MemberVO)session.getAttribute("user");
		//access_token ??????
		HttpURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/users/getToken");
		conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-Type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true);
		JSONObject obj = new JSONObject();
		obj.put("imp_key", "6085078399473707");
		obj.put("imp_secret", "a9cee70737acec945392a217d129a3735dad369aa9e7d04dd5525e800355cf22aa76419c419879c5");
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		bw.write(obj.toString());
		bw.flush();
		bw.close();
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		StringBuilder sb = new StringBuilder();
		String line = null;
		while((line = br.readLine()) != null) {
		sb.append(line + "\n");
		}
		br.close();
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj = (JSONObject)jsonParser.parse(sb.toString());
		JSONObject responseData = (JSONObject)jsonObj.get("response");
		String access_token = (String)responseData.get("access_token");

		//REST API(????????????) ??????
		HttpURLConnection conn2 = null;
		URL url2 = new URL("https://api.iamport.kr/payments/cancel");
		conn2 = (HttpURLConnection)url2.openConnection();
		conn2.setRequestMethod("POST");
		conn2.setRequestProperty("Content-Type", "application/json");
		conn2.setRequestProperty("Authorization", access_token);
		conn2.setDoOutput(true);
		JSONObject obj2 = new JSONObject();
		obj2.put("reason", "????????? ??????");
		obj2.put("imp_uid", imp_uid);
		obj2.put("amount", or_payment);
		BufferedWriter bw2 = new BufferedWriter(new OutputStreamWriter(conn2.getOutputStream()));
		bw2.write(obj2.toString());
		bw2.flush();
		bw2.close();
		BufferedReader br2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
		StringBuilder sb2 = new StringBuilder();
		String line2 = null;
		while((line2 = br2.readLine()) != null) {
		sb2.append(line2 + "\n");
		}
		br2.close();
		cartService.updateCancel(or_num);
		bookService.updateCancelAmount(pr_bk_isbn, pr_amount);
		if(member.getMe_grade().equals("ADMIN")) {
			memberService.updateCancelPoint(me_id, pr_use_point);
			memberService.updateCancelPoint(me_id, pr_use_point);
			//memberService.returnPoint(me_id, po_point);
		}else {
			memberService.updateCancelPoint(member.getMe_id(),pr_use_point);
			memberService.insertCancelPoint(member.getMe_id(), pr_use_point);
			//memberService.returnPoint(member.getMe_id(), po_point);
		}
		return "OK";
		
	}
	
}
