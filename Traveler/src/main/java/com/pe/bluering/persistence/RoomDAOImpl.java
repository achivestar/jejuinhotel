package com.pe.bluering.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NewsVO;
import com.pe.bluering.domain.RoomVO;

@Repository
public class RoomDAOImpl implements RoomDAO {

	@Autowired
	private SqlSession sql;
	
	private static String namespace = "com.pe.bluering.mappers.roomMapper";
	
	
	@Override
	public void Insert(RoomVO roomvo) {
		sql.insert(namespace+".Insert",roomvo);
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
	public List<RoomVO> getRoomList(Criteria cri) {
		return sql.selectList(namespace+".getRoomList",cri);
	}

	@Override
	public int countPaging(Criteria cri) {
		return sql.selectOne(namespace+".countPaging",cri);
	}

	@Override
	public RoomVO roomModify(int idx) {
		return sql.selectOne(namespace+".getRoomModify",idx);
	}

	@Override
	public void roomUpdate(RoomVO roomvo) {
		sql.update(namespace+".roomUpdate",roomvo);
	}

	@Override
	public void roomDelete(int idx) {
		sql.delete(namespace+".roomDelete",idx);
	}

}
