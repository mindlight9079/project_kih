package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;

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

	OrderVO getOrder(String partner_order_id);

	void updateOrder(OrderVO order);

	void insertPayment(@Param("tid")String tid, @Param("payment_method_type") String payment_method_type, @Param("me_name")String me_name, @Param("partner_order_id")String partner_order_id, @Param("point") Long point, @Param("approved_at") String approved_at);

	void insertParticulars(@Param("partner_order_id")String partner_order_id, @Param("bigInteger") BigInteger bigInteger, @Param("or_deliver") String or_deliver, @Param("integer") Integer integer);


}
