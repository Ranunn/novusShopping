package novus.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import novus.domain.DeliveryVO;

@Repository("deliveryDAO")
public class DeliveryDaoImpl implements DeliveryDao{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<DeliveryVO> getDeliveryList(DeliveryVO vo) {
		System.out.println("===> MemberMapper getDeliveryList() 호출");
		return mybatis.selectList("user.getDeliveryList", vo);
	}
	
}
