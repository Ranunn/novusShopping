package novus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import novus.domain.DeliveryVO;
import novus.model.DeliveryDaoImpl;

@Service("deliveryService")
public class DeliveryServiceImpl implements DeliveryService {

	@Autowired
	private DeliveryDaoImpl deliveryDAO;
	
	// 배송 리스트 sql
	public List<DeliveryVO> getDeliveryList(DeliveryVO vo) {
		return deliveryDAO.getDeliveryList(vo);
	}
	
}
