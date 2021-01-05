package novus.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import novus.domain.ReviewVO;
import novus.domain.SearchCntVO;

public interface ReviewDao {
	
	List<ReviewVO> getReviewList(ReviewVO vo);
	List<ReviewVO> getReviewListGrade(ReviewVO vo);
	List<ReviewVO> getReviewListGradeAsc(ReviewVO vo);
	List<ReviewVO> getReviewListView_count(ReviewVO vo);
	public ReviewVO searchDetailReview(ReviewVO vo);
	public void mgrReviewAnswer(ReviewVO vo);
	// 데이터 입력을 위한 함수 호출
	public void insertReview(ReviewVO vo);
	
	// 해당 상품 번호의 리뷰 수를 1 증가
	public void reviewCnt(SearchCntVO vo);
	
	// 교환/반품 내용을 DB에 등록
	public void insertReturn(ReviewVO vo);

	// 해당 상품 번호의 교환수/반품수를 1 증가
	public void refundCnt(ReviewVO vo);


}
