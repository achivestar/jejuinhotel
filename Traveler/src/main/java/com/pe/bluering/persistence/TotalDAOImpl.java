package com.pe.bluering.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TotalDAOImpl implements TotalDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.countMapper";
	
	
	@Override
	public int getTotalRoom() {
		return sql.selectOne(namespace+".getTotalRoom");
	}

	@Override
	public int getTotalFaq() {
		return sql.selectOne(namespace+".getTotalFaq");
	}

	@Override
	public int getTotalNews() {
		return sql.selectOne(namespace+".getTotalNews");
	}

	@Override
	public int getTotalFood() {
		return sql.selectOne(namespace+".getTotalFood");
	}

}
