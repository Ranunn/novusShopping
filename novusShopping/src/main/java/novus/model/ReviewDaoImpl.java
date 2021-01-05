package novus.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import novus.domain.MgrVO;
import novus.domain.ReviewVO;
import novus.domain.SearchCntVO;
//empTable.jsp 에서 mgrService를 호출하고,
//mgrService 에서는 mgrDao를 호출한다. 
@Repository("ReviewDAO")
public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		System.out.println("===> Mybatis getReviewList() 호출");
		return sqlSession.selectList("user.getReviewList",vo);
	}
	public List<ReviewVO> getReviewListGrade(ReviewVO vo) {
		System.out.println("===> Mybatis getReviewListGrade() 호출");
		return sqlSession.selectList("user.getReviewListGrade",vo);
	}
	public List<ReviewVO> getReviewListGradeAsc(ReviewVO vo) {
		System.out.println("===> Mybatis getReviewListGrade() 호출");
		return sqlSession.selectList("user.getReviewListGradeAsc",vo);
	}
	
	
	public List<ReviewVO> getReviewListView_count(ReviewVO vo) {
		System.out.println("===> Mybatis getReviewListView_count() 호출");
		return sqlSession.selectList("user.getReviewListView_count",vo);
	}
	@Override
	public ReviewVO searchDetailReview(ReviewVO vo) {
		System.out.println("===> Mybatis searchDetailReview() 호출");
		return sqlSession.selectOne("user.searchDetailReview", vo);
	}
	@Override
	public void mgrReviewAnswer(ReviewVO vo) {
		System.out.println("===> Mybatis mgrReviewAnswer() 호출");
		sqlSession.update("user.mgrReviewAnswer", vo);
	}
	

	
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
	public List<Map<String, Object>> viewCnt() {
		System.out.println("mgrDao에서 viewCnt() 호출");
		return sqlSession.selectList("user.viewCntSearch");
	}
	
	// 관리자 구매수 조회 
	public List<Map<String, Object>> buyCnt() {
		System.out.println("mgrDao에서 butCnt() 호출");
		return sqlSession.selectList("user.buyCntSearch");
	}
	
	// 관리자 리뷰수 조회 
	public List<Map<String, Object>> reviewCnt() {
		System.out.println("mgrDao에서 reviewCnt() 호출");
		return sqlSession.selectList("user.reviewCntSearch");
	}	
	
	// 관리자 반품수 조회 
	public List<Map<String, Object>> refundCnt() {
		System.out.println("mgrDao에서 refundCnt() 호출");
		return sqlSession.selectList("user.refundCntSearch");
	}
	
	// 관리자 교환수 조회 
	public List<Map<String, Object>> exchangeCnt() {
		System.out.println("mgrDao에서 exchangeCnt() 호출");
		return sqlSession.selectList("user.exchangeCntSearch");
	}	
	


	// 리뷰글 내용을 DB에 등록
	public void insertReview(ReviewVO vo) {
		System.out.println("reviewDao에서 insertReview() 호출");
		sqlSession.insert("user.insertReview", vo);
	}
	
	// 교환/반품 내용을 DB에 등록
	public void insertReturn(ReviewVO vo) {
		System.out.println("reviewDao에서 insertReturn() 호출");
		sqlSession.insert("user.insertReview", vo);
	}

	// 해당 상품 번호의 리뷰 수를 1 증가
	public void reviewCnt(SearchCntVO vo) {
		System.out.println("reviewDao에서 reviewCnt() 호출");
		sqlSession.update("user.reviewCnt", vo);
	}
	
	// 해당 상품 번호의 교환수/반품수를 1 증가
	public void refundCnt(ReviewVO vo) {
		System.out.println("reviewDao에서 refundCnt() 호출");
		String temp = vo.getReviewSpeed();
		System.out.println(temp);
		if(temp.equals("교환")) {
			System.out.println("교환수 증가");
			sqlSession.update("user.exchangeCnt", vo);
		} else if (temp.equals("반품")) {
			System.out.println("반품수 증가");
			sqlSession.update("user.refundCnt", vo);

		}
	}
	
}
