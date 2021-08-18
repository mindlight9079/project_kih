package kr.green.portfolio.dao;

import java.util.ArrayList;

import kr.green.portfolio.vo.CartVO;
import kr.green.portfolio.vo.RegistrationVO;

public interface CartDAO {

	void addCart(CartVO cart);

	ArrayList<CartVO> getCartList(String me_id);	
}
