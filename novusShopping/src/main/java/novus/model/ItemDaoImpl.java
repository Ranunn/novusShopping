package novus.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import novus.domain.CartVO;
import novus.domain.ItemVO;

@Repository("itemDAO")
public class ItemDaoImpl implements ItemDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 추가
	@Override
	public void itemInsert(ItemVO vo) {
		System.out.println("===> MemberMapper itemInsert() 호출");
		mybatis.insert("user.itemInsert", vo);
	}

	// 수정할 상품 불러오기
	@Override
	public ItemVO itemModifyList(ItemVO vo) {
		System.out.println("===> MemberMapper itemModifyList() 호출");
		return (ItemVO) mybatis.selectOne("user.itemModifyList", vo);
	}
	
	// 수정할 페이지
	@Override
	public void itemModify(ItemVO vo) {
		System.out.println("===> MemberMapper itemModify() 호출");
		mybatis.update("user.itemModify", vo);
	}
	
	// 삭제
	@Override
	public void itemDelete(ItemVO vo) {
		System.out.println("===> MemberMapper itemDelete() 호출");
		mybatis.delete("user.itemDelete", vo);
	}
	
	// 상품 리스트
	public List<ItemVO> getItemList(ItemVO vo) {
		System.out.println("===> MemberMapper getItemList() 호출");
		return mybatis.selectList("user.getItemList", vo);
	}
	
	// 검색
	@Override
	public void itemSearch(ItemVO vo) {
		System.out.println("===> MemberMapper itemSearch() 호출");
		mybatis.selectOne("user.itemSearch", vo);
	}
	
	public List<ItemVO> searchResult(String search) {
		System.out.println("===> MemberMapper searchResult() 호출");
		return mybatis.selectList("user.searchResult", search);
	}
	
	// 장바구니 리스트
	public List<Map<String, Object>> cartList() {
		System.out.println("===> MemberMapper CartList() 호출");
		return mybatis.selectList("user.cartList");
	}
	
	// 장바구니 추가
	@Override
	public void cartInsert(CartVO vo) {
		System.out.println("===> MemberMapper cartInsert() 호출");
		mybatis.insert("user.cartInsert", vo);
	}
	
	// 검색
	/*@Override
	public List<ItemVO> itemSearch(HashMap map) {
		System.out.println("===> MemberMapper itemSearch() 호출");
		return mybatis.selectList("user.itemSearch", map);
	}*/
	
	/*public List<ItemVO> listAll(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return mybatis.selectOne("user.listAll", map);
	}*/
	
}






