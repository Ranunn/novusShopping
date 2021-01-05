package novus.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import novus.domain.MgrVO;
import novus.model.MgrDaoImpl;

//empTable.jsp 에서 mgrService를 호출하고,
//mgrService 에서는 mgrDao를 호출한다. 
@Service("mgrService")
public class MgrServiceImpl implements MgrService{
	@Autowired
	private MgrDaoImpl mgrDao;
	
	public List<MgrVO> selectEmpList() {
		return mgrDao.selectEmpList();
	}
	public List<MgrVO> selectExEmpList() {
		return mgrDao.selectExEmpList();
	}
	
	
	public MgrVO selectEmp(MgrVO vo) {
		return mgrDao.selectEmp(vo);
	}
	
	public void updateEmp(MgrVO vo) {
		mgrDao.updateEmp(vo);
	}
	
	// 관리자 조회수 조회 
	public List<Map<String, Object>> viewCntList() {
		return mgrDao.viewCntList();
	}
	
	// 관리자 구매수 조회 
	public List<Map<String, Object>> buyCntList() {
		return mgrDao.buyCntList();
	}
	
	// 관리자 리뷰수 조회 
	public List<Map<String, Object>> reviewCntList() {
		return mgrDao.reviewCntList();
	}	
	
	// 관리자 반품수 조회 
	public List<Map<String, Object>> refundCntList() {
		return mgrDao.refundCntList();
	}
	
	// 관리자 교환수 조회 
	public List<Map<String, Object>> exchangeCntList() {
		return mgrDao.exchangeCntList();
	}

	// 관리자 일매출 조회 (날짜+금액)
	public List<Map<String, Object>> daySell() {
		return mgrDao.daySell();
	}

	// 관리자 월매출 조회 (날짜+금액)
	public List<Map<String, Object>> monthSell() {
		return mgrDao.monthSell();
	}
	
	// 관리자 연매출 조회 (날짜+금액)
	public List<Map<String, Object>> yearSell() {
		return mgrDao.yearSell();
	}

	
	
	
	
	
	/**
	 * 아이디 중복 체크하는 sql + 로그인 기능 sql
	 */
	public MgrVO idCheck_Login(MgrVO vo)
	{System.out.println("멤버서비스임플");
	return mgrDao.idCheck(vo);
	}
	

	/**
	 * 회원가입 sql
	 */
	public int mgrInsert(MgrVO vo)
	{
		return mgrDao.mgrInsert(vo);
	}
	
	/**
	 *  아이디 찾기
	 */
	public MgrVO mgrIdSearch(MgrVO vo) {
	return mgrDao.mgrIdSearch(vo);
	}
	/**
	 *  비밀번호 찾기
	 */
	public MgrVO mgrPassSearch(MgrVO vo) {
	return mgrDao.mgrPassSearch(vo);
	}

}
