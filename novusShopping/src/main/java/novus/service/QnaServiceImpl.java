package novus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import novus.domain.PostingVO;
import novus.domain.QnaVO;
import novus.model.QnaDaoImpl;
@Service("QnaService")
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDaoImpl qnaDAO;
	
	@Override	
	public List<QnaVO> getQnaList(QnaVO vo) {
	 return qnaDAO.getQnaList(vo);
		
	}

	@Override
	public void insertQna(QnaVO vo) {
		qnaDAO.insertQna(vo);
	}

	@Override
	public QnaVO searchDetail(QnaVO vo) {
		return qnaDAO.searchDetail(vo);
		
	}

	@Override
	public void deleteQna(QnaVO vo) {
		 qnaDAO.deleteQna(vo);
	}

	@Override
	public List<QnaVO> getFaqList(QnaVO vo) {
		return qnaDAO.getFaqList(vo);
	}

	@Override
	public List<PostingVO> getPostingList(PostingVO vo) {
		return qnaDAO.getPostingList(vo);
	}

	@Override
	public void saveQnaAnswer(QnaVO vo) {
		qnaDAO.saveQnaAnswer(vo);
	}

	@Override
	public List<QnaVO> getQnaByCate(QnaVO vo) {
		return qnaDAO.getQnaByCate(vo);
	}

}
