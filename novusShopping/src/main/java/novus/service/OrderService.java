package novus.service;

import java.util.List;

import novus.domain.OrderVO;

public interface OrderService {

	List<OrderVO> getOrderList(OrderVO vo);
	
}
