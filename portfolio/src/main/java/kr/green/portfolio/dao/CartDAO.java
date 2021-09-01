package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;

public interface CartDAO {

	void addCart(CartVO cart);

	ArrayList<CartVO> getCartList(String me_id);

	void deleteCart(CartVO cart);

	void updateCart(CartVO cart);

	CartVO selectCart(@Param("ca_me_id")String ca_me_id, @Param("ca_re_code")int ca_re_code);

	CartVO getPayment(@Param("ca_num")Integer ca_num, @Param("member")MemberVO member);

	ArrayList<CartVO> getPaymentList(@Param("isbn")BigInteger isbn, @Param("amount")Integer amount);

	CartVO seletCartRegister(@Param("bigInteger") BigInteger bigInteger, String ca_me_id);

	void updateCartRegister(@Param("ca_num") int ca_num, @Param("integer") Integer integer);

	void getCartRegister(@Param("bigInteger") BigInteger bigInteger, @Param("integer") Integer integer, @Param("ca_me_id") String ca_me_id);

	void insertPayFinished(OrderVO order);

	void insertParticulars(@Param("or_num") String or_num, @Param("integer") Integer integer, @Param("pr_amount") Integer pr_amount);

	OrderVO getOrder(String partner_order_id);

	void updateOrder(OrderVO order);

//	void insertPayment(@Param("tid")String tid, @Param("payment_method_type") String payment_method_type, @Param("me_name")String me_name, @Param("partner_order_id")String partner_order_id, @Param("point") Integer point);


}
