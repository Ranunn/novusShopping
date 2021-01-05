package novus.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import novus.domain.PostingVO;
import novus.domain.QnaVO;

@Repository("qnaDAO")
public class QnaDaoImpl implements QnaDao{

		@Autowired
		private SqlSessionTemplate mybatis;
		@Override
		public List<QnaVO> getQnaList(QnaVO vo) {
			System.out.println("===> Mybatis getQnaList() 호출");
			return mybatis.selectList("user.getQna",vo);
		}
		@Override
		public void insertQna(QnaVO vo) {
			System.out.println("===> Mybatis insertQna() 호출");
			mybatis.insert("user.insertQna", vo);
		}
		@Override
		public QnaVO searchDetail(QnaVO vo) {
			System.out.println("===> Mybatis searchDetail() 호출");
			return mybatis.selectOne("user.searchDetail", vo);
		}
		@Override
		public void deleteQna(QnaVO vo) {
			System.out.println("===> Mybatis deleteQna() 호출");
			mybatis.insert("user.deleteQna", vo);
		}
		@Override
		public List<QnaVO> getFaqList(QnaVO vo) {
			System.out.println("===> Mybatis getFaqList() 호출");
			return mybatis.selectList("user.getFaq",vo);
		}
		@Override
		public List<PostingVO> getPostingList(PostingVO vo) {
			System.out.println("===> Mybatis getPostingList() 호출");
			return mybatis.selectList("user.getPostingList",vo);
		}
		@Override
		public void saveQnaAnswer(QnaVO vo) {
			System.out.println("===> Mybatis saveQnaAnswer() 호출");
			mybatis.update("user.saveQnaAnswer", vo);
			
		}
		@Override
		public List<QnaVO> getQnaByCate(QnaVO vo) {
			System.out.println("===> Mybatis getQnaByCate() 호출");
			return mybatis.selectList("user.getQnaByCate",vo);
		}
}
