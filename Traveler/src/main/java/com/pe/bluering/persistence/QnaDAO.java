package com.pe.bluering.persistence;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.QnaReppleVO;
import com.pe.bluering.domain.QnaVO;

public interface QnaDAO {

	public List<QnaVO> qnaList();
	
	public void QnaAdd(QnaVO qnavo);
	
	public void qnaUpdate(QnaVO qnavo);

	public void qnaDelete(QnaVO qnavo);
	
	public void qnaReppleDelete(QnaVO qnavo);

	public QnaVO qnaModify(int idx);

	public List<QnaVO> getQnaList(Criteria cri);

	public void qnaReppleAdd(QnaReppleVO qnarepplevo);

	public List<QnaReppleVO> getQnaReppleList(int idx);

	public int listCountCriteria(Criteria cri);

	public int isMember(QnaVO qnavo);

	public QnaVO getQuestionList(QnaVO qnavo);

	public List<QnaReppleVO> getQuestionReppleList(int idx);

	public void qnaStateChange(int idx);

	public void qnaReppleUpdate(QnaReppleVO qnarepplevo);

	public void qnaAdminReppleDelete(int idx);

	
}
