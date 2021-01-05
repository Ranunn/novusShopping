package novus.model;

import java.util.List;
import java.util.Map;

import novus.domain.ItemVO;
import novus.domain.MemberVO;
import novus.domain.OrderVO;
import novus.domain.SearchCntVO;

public interface MemberDao {
	public void myOrder(OrderVO vo);
	
	public void buyCnt(SearchCntVO vo);

	List<MemberVO> selectMemberList();
	
	MemberVO selectMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	// 관리자 회원등급 수정 DB 반영
	void updateGrade(MemberVO vo);
	
	
	// 쇼핑몰 주문내역 보기
	List<Map<String, Object>> selectBuyList();
	
	// 리뷰, 반품/교환 페이지에서 해당 상품 정보 보기
	ItemVO selectBuy(ItemVO vo);

	/**
	 * id 중복체트 기능 구현
	 */	
	MemberVO idCheck( MemberVO vo );
	
	/**
	 * 회원가입기능 구현
	 */
	int memInsert(MemberVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	MemberVO memLogin(MemberVO vo);

	/**
	 *아이디 찾기 
	 *
	 */
	MemberVO memIdSearch(MemberVO vo);
	
	/**
	 *비밀번호 찾기 
	 *
	 */
	MemberVO memPassSearch(MemberVO vo);


}
