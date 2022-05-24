package com.pe.bluering.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.QnaReppleVO;
import com.pe.bluering.domain.QnaVO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.qnaMapper";
	


	@Override
	public void QnaAdd(QnaVO qnavo) {
		sql.insert(namespace+".Insert",qnavo);

	}
	
	@Override
	public List<QnaVO> getQnaList(Criteria cri) {
		return sql.selectList(namespace+".getQnaList",cri);
	}
	
	@Override
	public List<QnaReppleVO> getQnaReppleList(int idx) {
		return sql.selectList(namespace+".getQnaReppleList",idx);
	}

	@Override
	public void qnaUpdate(QnaVO qnavo) {
		sql.update(namespace+".qnaUpdate",qnavo);

	}

	@Override
	public void qnaDelete(QnaVO qnavo) {
		sql.delete(namespace+".qnaDelete",qnavo);

	}
	
	@Override
	public void qnaReppleDelete(QnaVO qnavo) {
		sql.delete(namespace+".qnaReppleDelete",qnavo);

	}


	@Override
	public QnaVO qnaModify(int idx) {
		return sql.selectOne(namespace+".qnaModify",idx);
	}

	@Override
	public List<QnaVO> qnaList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void qnaReppleAdd(QnaReppleVO qnarepplevo) {
		sql.insert(namespace+".qnaReppleAdd",qnarepplevo);
	
	}

	@Override
	public int listCountCriteria(Criteria cri) {
	    return sql.selectOne(namespace+".listCountCriteria",cri);
	}

	@Override
	public int isMember(QnaVO qnavo) {
		return sql.selectOne(namespace+".isMember",qnavo);
	}

	@Override
	public QnaVO getQuestionList(QnaVO qnavo) {
		return sql.selectOne(namespace+".getQuestionList",qnavo);
	}

	@Override
	public List<QnaReppleVO> getQuestionReppleList(int idx) {
		return sql.selectList(namespace+".getQuestionReppleList",idx);
	}

	@Override
	public void qnaStateChange(int idx) {
		sql.update(namespace+".qnaStateChange",idx);
		
	}

	@Override
	public void qnaReppleUpdate(QnaReppleVO qnarepplevo) {
		sql.update(namespace+".qnaReppleUpdate",qnarepplevo);
	}

	@Override
	public void qnaAdminReppleDelete(int idx) {
		sql.delete(namespace+".qnaAdminReppleDelete",idx);
		
	}





}
