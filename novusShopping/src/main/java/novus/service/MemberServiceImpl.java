package novus.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import novus.domain.ItemVO;
import novus.domain.MemberVO;
import novus.domain.OrderVO;
import novus.domain.SearchCntVO;
import novus.model.MemberDaoImpl;
@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDaoImpl memberDao;
	@Override
	public void myOrder(OrderVO vo) {
		memberDao.myOrder(vo);
		}
	public void buyCnt(SearchCntVO vo) {
		   memberDao.buyCnt(vo);
		}
	public List<MemberVO> selectMemberList(){
		return memberDao.selectMemberList();
	}
	
	public MemberVO selectMember(MemberVO vo){
		int temp= vo.getMemNo();
		System.out.println("서비스에서의 temp : " + temp);
		return memberDao.selectMember(vo);
	}
	
	public void updateMember(MemberVO vo) {
		memberDao.updateMember(vo);
	}
	
	// 관리자 회원등급 수정 DB 반영
	public void updateGrade(MemberVO vo) {
		memberDao.updateGrade(vo);
	}

	// 쇼핑몰 주문내역 보기
	public List<Map<String, Object>> selectBuyList() {
		System.out.println("서비스에서 selectBuyList() 호출 (2)");
		return memberDao.selectBuyList();
	}
	
	// 리뷰, 반품/교환 페이지에서 해당 상품 정보 보기
	public ItemVO selectBuy(ItemVO vo) {
		System.out.println("서비스에서 selectBuy() 호출 (2)");
		return memberDao.selectBuy(vo);
	}
	
	
	
	
	
	/**
	 * 아이디 중복 체크하는 sql + 로그인 기능 sql
	 */
	public MemberVO idCheck_Login(MemberVO vo)
	{System.out.println("멤버서비스임플");
	return memberDao.idCheck(vo);
	}


	/**
	 * 회원가입 sql
	 */
	public int memInsert(MemberVO vo)
	{
		return memberDao.memInsert(vo);
	}
	
	/**
	 *  아이디 찾기
	 */
	public MemberVO memIdSearch(MemberVO vo) {
	return memberDao.memIdSearch(vo);
	}
	/**
	 *  비밀번호 찾기
	 */
	public MemberVO memPassSearch(MemberVO vo) {
	return memberDao.memPassSearch(vo);
	}





}


