package novus.service;

import java.util.List;

import novus.domain.ReviewVO;
import novus.domain.SearchCntVO;

public interface ReviewService {
	List<ReviewVO> getReviewList(ReviewVO vo);
	List<ReviewVO> getReviewListGrade(ReviewVO vo);	
	List<ReviewVO> getReviewListView_count(ReviewVO vo);
	ReviewVO searchDetailReview(ReviewVO vo); 
	List<ReviewVO> getReviewListGradeAsc(ReviewVO vo);	
	void mgrReviewAnswer(ReviewVO vo);
	
	// 리뷰 내용을 DB에 등록
	public void insertReview(ReviewVO vo);
	
	// 해당 상품 번호의 리뷰 수를 1 증가
	public void reviewCnt(SearchCntVO vo);
	
	// 교환/반품 내용을 DB에 등록
	public void insertReturn(ReviewVO vo);
	
	// 해당 상품 번호의 교환수/반품수를 1 증가
	public void refundCnt(ReviewVO vo);
	
	
}
