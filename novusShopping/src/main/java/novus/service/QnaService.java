package novus.service;

import java.util.List;

import novus.domain.PostingVO;
import novus.domain.QnaVO;

public interface QnaService {
	List<QnaVO> getQnaList(QnaVO vo);
	
	void insertQna(QnaVO vo);

	 QnaVO searchDetail(QnaVO vo); 

	 void deleteQna(QnaVO vo);
	 
	 List<QnaVO> getFaqList(QnaVO vo);

	List<PostingVO> getPostingList(PostingVO vo);

	void saveQnaAnswer(QnaVO vo);
	
	
	List<QnaVO> getQnaByCate(QnaVO vo); 
	
	
}

