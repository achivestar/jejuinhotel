package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.QnaReppleVO;
import com.pe.bluering.domain.QnaVO;

public interface QnaService {

	public void qnaAdd(QnaVO qnavo);
	
	public List<QnaVO> listQna(Criteria cri);
	
	public void qnaUpdate(QnaVO qnavo);
	
	public void qnaDelete(QnaVO qnavo);

	public QnaVO qnaModify(int idx);

	public List<QnaVO> getQnaList(Criteria cri);

	public void qnaReppleAdd(QnaReppleVO qnarepplevo);

	public List<QnaReppleVO> getQnaReppleList(int idx);

	public List<QnaReppleVO> getQnaReppleList(Criteria cri);

	public int listCountCriteria(Criteria cri);

	public int isMember(QnaVO qnavo);

	public QnaVO getQuestionList(QnaVO qnavo);

	public List<QnaReppleVO> getQuestionReppleList(int idx);

	public void qnaReppleDelete(QnaVO qnavo);

	public void qnaStateChange(int idx);

	public void qnaReppleUpdate(QnaReppleVO qnarepplevo);

	public void qnaAdminReppleDelete(int idx);


	
}
