package com.pe.bluering.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.EtcVO;


@Repository
public class EtcDAOImpl implements EtcDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.etcMapper";
	
	
	@Override
	public void Insert(EtcVO etcvo) {
		sql.insert(namespace+".Insert",etcvo);
	}

	@Override
	public int getCount() {
		return sql.selectOne(namespace+".getCount");
	}

	@Override
	public int getIdx() {
		return sql.selectOne(namespace+".getIdx");
	}

	@Override
	public List<EtcVO> getEtcList(Criteria cri) {
		return sql.selectList(namespace+".getEtcList",cri);
	}

	@Override
	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}

	@Override
	public EtcVO etcModify(int idx) {
		return sql.selectOne(namespace+".getEtcModify",idx);
	}

	@Override
	public void etcUpdate(EtcVO etcvo) {
		sql.update(namespace+".etcUpdate",etcvo);
	}

	@Override
	public void etcDelete(int idx) {
		sql.delete(namespace+".etcDelete",idx);
	}

}
