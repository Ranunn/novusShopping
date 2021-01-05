package novus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import novus.domain.OrderVO;
import novus.model.OrderDaoImpl;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDaoImpl orderDAO;
	
	// 상품 리스트 sql
	public List<OrderVO> getOrderList(OrderVO vo) {
		return orderDAO.getOrderList(vo);
	}
	
}
