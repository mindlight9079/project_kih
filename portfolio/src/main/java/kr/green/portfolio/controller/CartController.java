package kr.green.portfolio.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
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
		MemberVO member = (MemberVO)session.getAttribute("user");
		String userId = member.getMe_id();
		int amount = cart.getCa_amount();
		String result = "0";
		if(member != null) {
			cart.setCa_me_id(userId);
			cart.setCa_amount(amount);
			cartService.updateCart(cart);
			result = "1";
		}
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
	public ModelAndView getCartList (ModelAndView mv, BigInteger[] checkList, Integer[] cataAmount, HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String ca_me_id = member.getMe_id();
		cartService.getCartRegister(checkList, cataAmount, ca_me_id);
		mv.setViewName("redirect:/order/cart");
		return mv;
	}
	
	@RequestMapping(value="/order/pointexchange")
	public ModelAndView pointExchagne (ModelAndView mv) {
		mv.setViewName("/order/pointexchange");
		return mv;
	}
	
	@RequestMapping(value="/order/payfinished", method=RequestMethod.POST)
	public ModelAndView payFinishedPost (ModelAndView mv, HttpSession session, String partner_order_id, BigInteger[] isbn, Integer[] pr_amount, Integer pr_use_point) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		cartService.insertParticulars(partner_order_id, isbn, pr_amount, pr_use_point);
		bookService.updateAmount(isbn, pr_amount);
		cartService.updateValid(member.getMe_id(), isbn);
		memberService.updatePoint(member.getMe_id(), pr_use_point);
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
				String parameter = "cid=TC0ONETIME" // 가맹점 코드
						+ "&partner_order_id="+partner_order_id// 가맹점 주문번호
						+ "&partner_user_id="+partner_user_id // 가맹점 회원 id
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
				System.out.println("리절트 :"+result);
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
				String parameter = "cid=TC0ONETIME" // 가맹점 코드
						+ "&partner_order_id="+order.getOr_num()// 가맹점 주문번호
						+ "&partner_user_id="+order.getOr_me_id() // 가맹점 회원 id
						+ "&item_name=GreenBookStore" // 상품명
						+ "&quantity=1"// 상품 수량
						+ "&total_amount="+order.getOr_payment() // 총 금액
						+ "&vat_amount=200" // 부가세
						+ "&tax_free_amount=0" // 상품 비과세 금액
						+ "&approval_url=http://localhost:8080/portfolio/order/payfinished?partner_order_id="+order.getOr_num()// 결제 성공 시
						+ "&fail_url=http://localhost:8080/portfolio/order/payment" // 결제 실패 시
						+ "&cancel_url=http://localhost:8080/portfolio/order/payment"; // 결제 취소 시
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
	@RequestMapping(value="/order/inicis", method=RequestMethod.POST)
	public String addCart(OrderVO order, ShippingVO shipping, String apply_num, String pay_method, String paid_at, HttpSession session, HttpServletRequest request) {
		MemberVO member = (MemberVO)session.getAttribute("user");
		String me_name = ((MemberVO)request.getSession().getAttribute("user")).getMe_name();
		String result = "0";
		if(member != null && member.getMe_id().equals(order.getOr_me_id())) {
			cartService.insertShipping(shipping);
			order.setOr_sh_num(shipping.getSh_num());
			cartService.insertPayFinished(order);
			cartService.updateOrderState(order.getOr_num());
			
			long timestamp = Long.parseLong(paid_at);
		    Date date = new java.util.Date(timestamp*1000L); 
		    SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		    sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT+9")); 
		    String formattedDate = sdf.format(date);
		    
			cartService.insertPaymentInic(apply_num, pay_method, me_name, order.getOr_num(), formattedDate);
			result = ""+order.getOr_num();
		}
		return result;
	}
}
