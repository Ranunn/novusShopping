package novus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import novus.domain.ReviewVO;
import novus.domain.SearchCntVO;
import novus.model.ReviewDaoImpl;
@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDaoImpl reviewDAO;
	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		return reviewDAO.getReviewList(vo);
	}
	public List<ReviewVO> getReviewListGrade(ReviewVO vo) {
		return reviewDAO.getReviewListGrade(vo);
	}
	public List<ReviewVO> getReviewListGradeAsc(ReviewVO vo) {
		return reviewDAO.getReviewListGradeAsc(vo);
	}
	
	public List<ReviewVO> getReviewListView_count(ReviewVO vo) {
		return reviewDAO.getReviewListView_count(vo);
	}
	@Override
	public ReviewVO searchDetailReview(ReviewVO vo) {
		return reviewDAO.searchDetailReview(vo);
	}
	@Override
	public void mgrReviewAnswer(ReviewVO vo) {
		reviewDAO.mgrReviewAnswer(vo);
	}
	
	@Autowired
	private ReviewDaoImpl reviewDao;

	// 데이터 입력을 위한 함수 호출
	public void insertReview(ReviewVO vo) {
		reviewDao.insertReview(vo);
	}
	
	// 해당 상품 번호의 리뷰 수를 1 증가
	public void reviewCnt(SearchCntVO vo) {
		reviewDao.reviewCnt(vo);
	}

	// 교환/반품 내용을 DB에 등록
	public void insertReturn(ReviewVO vo) {
		reviewDao.insertReturn(vo);
	}

	// 해당 상품 번호의 교환수/반품수를 1 증가
	public void refundCnt(ReviewVO vo) {
		reviewDao.refundCnt(vo);
	}

}
