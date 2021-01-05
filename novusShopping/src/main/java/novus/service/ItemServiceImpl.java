package novus.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import novus.domain.CartVO;
import novus.domain.ItemVO;
import novus.model.ItemDaoImpl;

@Service("itemService")
public class ItemServiceImpl implements ItemService{

	@Autowired
	private ItemDaoImpl itemDAO;
	
	// 상품 리스트
	public List<ItemVO> getItemList(ItemVO vo) {
		return itemDAO.getItemList(vo);
	}
	
	// 상품 추가 sql
	public void itemInsert(ItemVO vo) {
		itemDAO.itemInsert(vo);
	}
	
	// 상품 수정 아이템 불러오기
	public ItemVO itemModifyList(ItemVO vo) {
		return itemDAO.itemModifyList(vo);
	}
	
	// 상품 수정 sql
	public void itemModify(ItemVO vo) {
		itemDAO.itemModify(vo);
		System.out.println("서비스에서 itemModify 호출");
	}
	
	// 상품 삭제 sql
	public void itemDelete(ItemVO vo) {
		itemDAO.itemDelete(vo);
	}
	
	// 상품 검색 sql
	public void itemSearch(ItemVO vo) {
		itemDAO.itemSearch(vo);
	}
	
	public List<ItemVO> searchResult(String search){
		return itemDAO.searchResult(search);
	}
	
	// 장바구니 리스트 sql
	public List<Map<String, Object>> cartList() {
		return itemDAO.cartList();
	}
	
	// 장바구니 추가 sql
	public void cartInsert(CartVO vo) {
		itemDAO.cartInsert(vo);
	}
	
	/*public List<ItemVO> itemSearch(ItemVO vo, String searchText) {
		HashMap map = new HashMap();
		map.put("itemSearch", vo);	
		map.put("searchtext", searchText);
		
		return itemDAO.itemSearch(map);
	}*/
	
	/*public List<ItemVO> listAll(String searchOption, String keyword) throws Exception {
		return itemDAO.listAll(searchOption, keyword);
	}*/
	
	
}
