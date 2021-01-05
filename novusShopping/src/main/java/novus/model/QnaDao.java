package novus.model;

import java.util.List;

import novus.domain.PostingVO;
import novus.domain.QnaVO;

public interface QnaDao {
	public  List<QnaVO> getQnaList(QnaVO vo);
	public void insertQna(QnaVO vo);
	public QnaVO searchDetail(QnaVO vo);
	public void deleteQna(QnaVO vo);
	public  List<QnaVO> getFaqList(QnaVO vo);
	public  List<PostingVO> getPostingList(PostingVO vo);
	public void saveQnaAnswer(QnaVO vo);
	public List<QnaVO> getQnaByCate(QnaVO vo);
	
}
