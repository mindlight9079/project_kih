package kr.green.portfolio.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.pagination.Criteria;
import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.MemberVO;
import kr.green.portfolio.vo.OrderVO;
import kr.green.portfolio.vo.ParticularsVO;
import kr.green.portfolio.vo.ShippingVO;

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

	void insertParticulars(@Param("partner_order_id")String partner_order_id, @Param("bigInteger") BigInteger bigInteger, @Param("integer") Integer integer, @Param("pr_use_point") Integer pr_use_point);

	ArrayList<OrderVO> selectOrder(@Param("me_id") String me_id, @Param("cri") Criteria cri);

	void updateValid(@Param("me_id") String me_id, @Param("bigInteger") BigInteger bigInteger);

	ArrayList<OrderVO> selectOrderList(@Param("me_id")String me_id, @Param("cri") Criteria cri);

	ArrayList<ParticularsVO> getParticularsList(String or_num);

	OrderVO detailOrderList(@Param("or_num") String or_num, @Param("checkId") String checkId);

	void insertShipping(@Param("shipping") ShippingVO shipping);

	ArrayList<ShippingVO> selectShipping(String userId);

	ShippingVO detailShippingList(@Param("or_num") String or_num, @Param("checkId") String checkId);



}
