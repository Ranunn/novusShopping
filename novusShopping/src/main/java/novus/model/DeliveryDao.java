package novus.model;

import java.util.List;

import novus.domain.DeliveryVO;

public interface DeliveryDao {

	// 배송 리스트
	public List<DeliveryVO> getDeliveryList(DeliveryVO vo);
	
}
