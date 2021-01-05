package novus.service;

import java.util.List;

import novus.domain.DeliveryVO;

public interface DeliveryService {

	List<DeliveryVO> getDeliveryList(DeliveryVO vo);
	
}
