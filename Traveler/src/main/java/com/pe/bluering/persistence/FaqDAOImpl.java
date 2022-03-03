package com.pe.bluering.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.FaqVO;


@Repository
public class FaqDAOImpl implements FaqDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.faqMapper";
	
	
	@Override
	public List<FaqVO> faqList() {
		return sql.selectList(namespace+".getFaqList");
	}

	@Override
	public void faqAdd(FaqVO faqvo) {
		sql.insert(namespace+".Insert",faqvo);
	}

	@Override
	public void faqUpdate(FaqVO faqvo) {
		sql.update(namespace+".faqUpdate",faqvo);
	}

	@Override
	public void faqDelete(int idx) {
		sql.delete(namespace+".faqDelete",idx);
	}

	@Override
	public FaqVO faqModify(int idx) {
		return sql.selectOne(namespace+".faqModify",idx);
	}

}
