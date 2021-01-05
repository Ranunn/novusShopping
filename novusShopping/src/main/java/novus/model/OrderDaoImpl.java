package novus.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import novus.domain.OrderVO;

@Repository("orderDAO")
public class OrderDaoImpl implements OrderDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<OrderVO> getOrderList(OrderVO vo) {
		System.out.println("===> MemberMapper getOrderList() 호출");
		return mybatis.selectList("user.getOrderList", vo);
	}
}
