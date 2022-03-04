package com.pe.bluering.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodMenuVO;

@Repository
public class FoodMenuDAOImpl implements FoodMenuDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.foodMenuMapper";
	
	
	@Override
	public void Insert(FoodMenuVO foodmenuvo) {
		sql.insert(namespace+".Insert",foodmenuvo);
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
	public List<FoodMenuVO> getFoodMenuList(Criteria cri) {
		return sql.selectList(namespace+".getFoodMenuList",cri);
	}

	@Override
	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}

	@Override
	public FoodMenuVO foodMenuModify(int idx) {
		return sql.selectOne(namespace+".getFoodModify",idx);
	}

	@Override
	public void foodMenuUpdate(FoodMenuVO foodmenuvo) {
		sql.update(namespace+".foodMenuUpdate",foodmenuvo);
	}

	@Override
	public void foodMenuDelete(int idx) {
		sql.delete(namespace+".foodMenuDelete",idx);
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
	public List<FoodMenuVO> getFoodMenuList(String str) {
		return sql.selectList(namespace+".getFoodMenusList",str);
	}

	@Override
	public List<FoodMenuVO> getBeverageMenuList(String str) {
		return sql.selectList(namespace+".getBeverageMenusList",str);
	}

}
