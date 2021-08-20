package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.RegistrationVO;

public interface CartDAO {

	void addCart(CartVO cart);

	ArrayList<CartVO> getCartList(String me_id);

	void deleteCart(CartVO cart);

	void updateCart(CartVO cart);

	CartVO selectCart(@Param("ca_me_id")String ca_me_id, @Param("ca_re_code")int ca_re_code);

}
