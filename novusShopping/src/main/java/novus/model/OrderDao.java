package novus.model;

import java.util.List;

import novus.domain.OrderVO;

public interface OrderDao {

	// 주문 리스트
	public List<OrderVO> getOrderList(OrderVO vo);	
}
