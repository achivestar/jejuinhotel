package com.pe.bluering.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.BnfVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodVO;

@Repository
public class FoodDAOImpl implements FoodDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.foodMapper";
	
	
	@Override
	public void Insert(FoodVO foodvo) {
		sql.insert(namespace+".Insert",foodvo);

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
	public List<FoodVO> getFoodList(Criteria cri) {
		return sql.selectList(namespace+".getFoodList",cri);
	}

	@Override
	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}

	@Override
	public FoodVO foodModify(int idx) {
		return sql.selectOne(namespace+".getFoodModify",idx);
	}

	@Override
	public void foodUpdate(FoodVO foodvo) {
		sql.update(namespace+".foodUpdate",foodvo);

	}

	@Override
	public void foodDelete(int idx) {
		sql.delete(namespace+".foodDelete",idx);
	}

	@Override
	public String getOriginFileName(Integer idx) {
		return sql.selectOne(namespace+".getOriginFileName",idx);
	}

	@Override
	public String getSaveFileName(Integer idx) {
		return sql.selectOne(namespace+".getSaveFileName",idx);
	}

	@Override
	public String getDeleteFileName(int idx) {
		return sql.selectOne(namespace+".getDeleteFileName",idx);
	}

	@Override
	public void bnfUpdate(BnfVO bnfvo) {
		sql.update(namespace+".bnfUpdate",bnfvo);
		
	}

	@Override
	public BnfVO getBnf(int idx) {
		return sql.selectOne(namespace+".getBnf",idx);
	}

	

}
