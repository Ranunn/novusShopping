package novus.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import novus.domain.MgrVO;
@Repository("mgrDAO")
public class MgrDaoImpl  implements MgrDao{


	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<MgrVO> selectEmpList(){
		System.out.println("mgrDao에서 selectMgr() 호출");
		return sqlSession.selectList("user.selectEmpList");
	}
	public List<MgrVO> selectExEmpList(){
		System.out.println("mgrDao에서 selectMgr() 호출");
		return sqlSession.selectList("user.selectExEmpList");
	}
	
	public MgrVO selectEmp(MgrVO vo) {
		System.out.println("mgrDao에서 selectEmp() 호출");
		return sqlSession.selectOne("user.selectEmp", vo);
	}
	
	public void updateEmp(MgrVO vo) {
		System.out.println("mgrDao에서 updateEmp() 호출");
		sqlSession.update("user.updateEmp", vo);
	}
	
	// 관리자 조회수 조회 
	public List<Map<String, Object>> viewCntList() {
		System.out.println("mgrDao에서 viewCntList() 호출");
		return sqlSession.selectList("user.viewCntSearch");
	}
	
	// 관리자 구매수 조회 
	public List<Map<String, Object>> buyCntList() {
		System.out.println("mgrDao에서 butCntList() 호출");
		return sqlSession.selectList("user.buyCntSearch");
	}
	
	// 관리자 리뷰수 조회 
	public List<Map<String, Object>> reviewCntList() {
		System.out.println("mgrDao에서 reviewCntList() 호출");
		return sqlSession.selectList("user.reviewCntSearch");
	}	
	
	// 관리자 반품수 조회 
	public List<Map<String, Object>> refundCntList() {
		System.out.println("mgrDao에서 refundCntList() 호출");
		return sqlSession.selectList("user.refundCntSearch");
	}
	
	// 관리자 교환수 조회 
	public List<Map<String, Object>> exchangeCntList() {
		System.out.println("mgrDao에서 exchangeCntList() 호출");
		return sqlSession.selectList("user.exchangeCntSearch");
	}	
	
	// 관리자 일매출 조회 (날짜+금액)
	public List<Map<String, Object>> daySell() {
		System.out.println("mgrDao에서 daySell() 호출");
		return sqlSession.selectList("user.daySell");
	}	
	// 관리자 월매출 조회 (날짜+금액)
	public List<Map<String, Object>> monthSell() {
		System.out.println("mgrDao에서 monthSell() 호출");
		return sqlSession.selectList("user.monthSell");
	}
	// 관리자 연매출 조회 (날짜+금액)
	public List<Map<String, Object>> yearSell() {
		System.out.println("mgrDao에서 yearSell() 호출");
		return sqlSession.selectList("user.yearSell");
	}
	
	
	
	
	
	
	@Override
	public MgrVO idCheck(MgrVO vo) {
		System.out.println("===> user idCheck 호출: " + vo.getMgrId() + " / " + vo.getMgrPass()); // 됨
		MgrVO result = sqlSession.selectOne("user.idCheckMgr", vo); //
		return result;
	}

	@Override
	public int mgrInsert(MgrVO vo) {
		System.out.println("===>  user mgrInsert() 호출 : ");
		return sqlSession.insert("user.mgrInsert", vo);
	}

	@Override
	public MgrVO mgrLogin(MgrVO vo) {
		System.out.println("===> user idCheck 호출");
		return sqlSession.selectOne("user.idCheckMgr", vo);
	}
	@Override
	public MgrVO mgrIdSearch(MgrVO vo) {
		System.out.println("===> user mgrIdSearch 호출"+vo.getMgrName());
		return sqlSession.selectOne("user.idSearchMgr", vo);
	}
	@Override
	public MgrVO mgrPassSearch(MgrVO vo) {
		System.out.println("===> user mgrPassSearch 호출"+vo.getMgrName());
		return sqlSession.selectOne("user.passSearchMgr", vo);
	}
	
	
	
	
	}


