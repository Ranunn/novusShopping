package novus.model;

import java.util.List;
import java.util.Map;

import novus.domain.CartVO;
import novus.domain.ItemVO;

public interface ItemDao {

	// 상품 추가
	public void itemInsert(ItemVO vo);
	
	// 수정할 상품 불러오기
	public ItemVO itemModifyList(ItemVO vo);
	
	// 상품 수정 페이지
	public void itemModify(ItemVO vo);
	
	// 상품 삭제
	public void itemDelete(ItemVO vo);
	
	// 상품 검색
	//public List<ItemVO> itemSearch(ItemVO vo, String searchText);
	public void itemSearch(ItemVO vo);
	public List<ItemVO> searchResult(String result);
	
	// 상품 리스트
	public List<ItemVO> getItemList(ItemVO vo);
	
	// 장바구니 리스트
	public List<Map<String, Object>> cartList();
	
	// 장바구니 추가
	public void cartInsert(CartVO vo);
}
