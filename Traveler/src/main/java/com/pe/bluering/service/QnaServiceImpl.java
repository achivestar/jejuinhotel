package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.QnaReppleVO;
import com.pe.bluering.domain.QnaVO;
import com.pe.bluering.persistence.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO dao;
	
	@Override
	public void qnaAdd(QnaVO qnavo) {
		dao.QnaAdd(qnavo);

	}
	
	@Override
	public List<QnaVO> getQnaList(Criteria cri) {
		return dao.getQnaList(cri);
	}


	@Override
	public void qnaUpdate(QnaVO qnavo) {
		dao.qnaUpdate(qnavo);

	}

	@Override
	public void qnaDelete(QnaVO qnavo) {
		dao.qnaDelete(qnavo);

	}
	
	@Override
	public void qnaReppleDelete(QnaVO qnavo) {
		dao.qnaReppleDelete(qnavo);

	}


	@Override
	public QnaVO qnaModify(int idx) {
		return dao.qnaModify(idx);
	}



	@Override
	public void qnaReppleAdd(QnaReppleVO qnarepplevo) {
		dao.qnaReppleAdd(qnarepplevo);
		
	}

	@Override
	public List<QnaReppleVO> getQnaReppleList(int idx) {
		return dao.getQnaReppleList(idx);
	}

	@Override
	public List<QnaVO> listQna(Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QnaReppleVO> getQnaReppleList(Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int listCountCriteria(Criteria cri) {
		return dao.listCountCriteria(cri);
	}

	@Override
	public int isMember(QnaVO qnavo) {
		return dao.isMember(qnavo);
	}

	@Override
	public QnaVO getQuestionList(QnaVO qnavo) {
		return dao.getQuestionList(qnavo);
	}

	@Override
	public List<QnaReppleVO> getQuestionReppleList(int idx) {
		return dao.getQuestionReppleList(idx);
	}

	@Override
	public void qnaStateChange(int idx) {
		dao.qnaStateChange(idx);
		
	}

	@Override
	public void qnaReppleUpdate(QnaReppleVO qnarepplevo) {
		dao.qnaReppleUpdate(qnarepplevo);
	}


	@Override
	public void qnaAdminReppleDelete(int idx) {
		dao.qnaAdminReppleDelete(idx);
		
	}









}
