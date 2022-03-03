package com.pe.bluering.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NewsVO;

@Repository
public class NewsDAOImpl implements NewsDAO {

	
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.newsMapper";
	
	
	@Override
	public void Insert(NewsVO newsvo) {
		sql.insert(namespace+".Insert",newsvo);
	}

	@Override
	public int getImgCount() {
		return sql.selectOne(namespace+".getImgCount");
	}

	@Override
	public int getLastIdx() {
		return sql.selectOne(namespace+".getLastIdx");
	}

	@Override
	public List<NewsVO> getNewsList(Criteria cri) {
		return sql.selectList(namespace+".getNewsList",cri);
	}
	
	
	@Override
	public NewsVO getNewModify(int idx) {
		return sql.selectOne(namespace+".getNewsModify",idx);
	}


	@Override
	public void newsThumbUpdate(NewsVO newsvo) {
		sql.update(namespace+".newsThumbUpdate",newsvo);
	}

	@Override
	public void newsUpdate(NewsVO newsvo) {
		sql.update(namespace+".newsUpdate",newsvo);
	}

	@Override
	public void newsDelete(int idx) {
		sql.delete(namespace+".newsDelete",idx);
	}

	@Override
	public List<NewsVO> getPrev(int idx) {
		return sql.selectList(namespace+".getPrev",idx);
	}

	@Override
	public List<NewsVO> getNext(int idx) {
		return sql.selectList(namespace+".getNext",idx);
	}

	@Override
	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}

	@Override
	public List<NewsVO> getNewsListIndex() {
		return sql.selectList(namespace+".getNewsListIndex");
	}

	

	

}
