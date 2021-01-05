package novus.service;

import java.util.List;
import java.util.Map;

import novus.domain.CartVO;
import novus.domain.ItemVO;

public interface ItemService {

	public void itemInsert(ItemVO vo);			// 추가
	
	public ItemVO itemModifyList(ItemVO vo);	// 수정-불러오기
	
	public void itemModify(ItemVO vo);			// 수정
	
	public void itemDelete(ItemVO vo);			// 삭제
	
	public void itemSearch(ItemVO vo);
	public List<ItemVO> searchResult(String search);	// 검색
	
	public List<ItemVO> getItemList(ItemVO vo);		// 상품 리스트
	
	public List<Map<String, Object>> cartList();		// 장바구니리스트
	public void cartInsert(CartVO vo);	// 장바구니에 넣기
	
}
