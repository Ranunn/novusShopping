package novus.service;

import java.util.List;
import java.util.Map;

import novus.domain.ItemVO;
import novus.domain.MemberVO;
import novus.domain.OrderVO;
import novus.domain.SearchCntVO;

public interface MemberService {
	//결제하면 데이터에 값 넘어감
	void myOrder(OrderVO vo);
	// 해당 상품 번호의 판매수를 1 증가
	public void buyCnt(SearchCntVO vo);
	// 관리자 회원정보 보기
	List<MemberVO> selectMemberList();
	
	MemberVO selectMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	// 관리자 회원등급 수정 DB 반영
	void updateGrade(MemberVO vo);
	
	
	// 쇼핑몰 주문내역 보기
	List<Map<String, Object>> selectBuyList();
	
	// 리뷰, 반품/교환 페이지에서 해당 상품 정보 보기
	ItemVO selectBuy(ItemVO vo);
	
	
	
	
	
	
	
	public MemberVO idCheck_Login(MemberVO vo);
	public MemberVO memIdSearch(MemberVO vo);
	public MemberVO memPassSearch(MemberVO vo);
	public int memInsert(MemberVO vo );
}

