package novus.model;

import java.util.List;
import java.util.Map;

import novus.domain.MgrVO;

public interface MgrDao {

	List<MgrVO> selectEmpList();
	List<MgrVO> selectExEmpList();
	
	MgrVO selectEmp(MgrVO vo);
	
	void updateEmp(MgrVO vo);
	
	// 관리자 조회수 조회 
	List<Map<String, Object>> viewCntList();
	
	// 관리자 구매수 조회 
	List<Map<String, Object>> buyCntList();
	
	// 관리자 리뷰수 조회 
	List<Map<String, Object>> reviewCntList();
	
	// 관리자 반품수 조회 
	List<Map<String, Object>> refundCntList();	
	
	// 관리자 교환수 조회 
	List<Map<String, Object>> exchangeCntList();
	
	// 관리자 일매출 조회 (날짜+금액)
	List<Map<String, Object>> daySell();	
	
	// 관리자 월매출 조회 (날짜+금액)
	List<Map<String, Object>> monthSell();	

	// 관리자 연매출 조회 (날짜+금액)
	List<Map<String, Object>> yearSell();
	
	
	
	
	
	
	
	/**
	 * id 중복체트 기능 구현
	 */	
	MgrVO  idCheck( MgrVO vo );
	
	/**
	 * 회원가입기능 구현
	 */
	int mgrInsert(MgrVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	MgrVO mgrLogin(MgrVO vo);
	
	/**
	 *아이디 찾기 
	 *
	 */
	MgrVO mgrIdSearch(MgrVO vo);
	
	/**
	 *비밀번호 찾기 
	 *
	 */
	MgrVO mgrPassSearch(MgrVO vo);

	
}
