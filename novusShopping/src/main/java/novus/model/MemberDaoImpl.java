package novus.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import novus.domain.ItemVO;
import novus.domain.MemberVO;
import novus.domain.OrderVO;
import novus.domain.SearchCntVO;

@Repository("MemDAO")
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public void myOrder(OrderVO vo) {
		System.out.println("===> Mybatis myOrder() 호출");
		sqlSession.insert("user.myOrder", vo);}

	public void buyCnt(SearchCntVO vo) {
		System.out.println("memberDao에서 buyCnt() 호출");
		sqlSession.update("user.buyCnt", vo);
	}

	public List<MemberVO> selectMemberList(){
		System.out.println("memberDao에서 selectMemberList() 호출");
		return sqlSession.selectList("user.selectMemberList");
	}
	
	public MemberVO selectMember(MemberVO vo){
		System.out.println("memberDao에서 selectMember() 호출");
		return sqlSession.selectOne("user.selectMember", vo);
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println("memberDao에서 updateMember() 호출");
		sqlSession.update("user.updateMember", vo);
	}
	
	// 관리자 회원등급 수정 DB 반영
	public void updateGrade(MemberVO vo) {
		System.out.println("memberDao에서 updateGrade() 호출");
		
		int vip = vo.getMemVIP();
		int vvip = vo.getMemVVIP();
		System.out.println(vip);
		System.out.println(vvip);
		if (vip > 0) {
//			sqlSession.update("user.updateVIP", vo);
		}
		if (vvip > 0) {
//			sqlSession.update("user.updateVVIP", vo);
		}
	}
	
	// 쇼핑몰 주문내역 보기
	public List<Map<String, Object>> selectBuyList(){
		System.out.println("memberDao에서 selectBuyList() 호출 (3) ");
		return sqlSession.selectList("user.selectBuyList");
	}
	
	// 리뷰, 반품/교환 페이지에서 해당 상품 정보 보기
	public ItemVO selectBuy(ItemVO vo){
		System.out.println("memberDao에서 selectBuy() 호출 (3) ");
		return sqlSession.selectOne("user.selectBuy", vo);
	}
	
	
	
	
	
	
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> user idCheck 호출: " + vo.getMemId() + " / " + vo.getMemPass()); // 됨
		MemberVO result = sqlSession.selectOne("user.idCheck", vo); //
		return result;
	}

	@Override
	public int memInsert(MemberVO vo) {
		System.out.println("===>  user memInsert() 호출 : ");
		return sqlSession.insert("user.memInsert", vo);
	}

	@Override
	public MemberVO memLogin(MemberVO vo) {
		System.out.println("===> user idCheck 호출");
		return sqlSession.selectOne("user.idCheck", vo);
	}
	@Override
	public MemberVO memIdSearch(MemberVO vo) {
		System.out.println("===> user memIdSearch 호출"+vo.getMemName());
		return sqlSession.selectOne("user.idSearch", vo);
	}
	@Override
	public MemberVO memPassSearch(MemberVO vo) {
		System.out.println("===> user memPassSearch 호출"+vo.getMemName());
		return sqlSession.selectOne("user.passSearch", vo);
	}


}
