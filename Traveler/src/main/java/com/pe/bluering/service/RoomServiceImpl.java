package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.RoomVO;
import com.pe.bluering.persistence.FaqDAO;
import com.pe.bluering.persistence.RoomDAO;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomDAO dao;
	
	@Override
	public void Insert(RoomVO roomvo) {
		dao.Insert(roomvo);
	}
	
	@Override
	public int getCount() {
		return dao.getCount();
	}

	@Override
	public int getIdx() {
		return dao.getIdx();
	}

	@Override
	public List<RoomVO> getRoomList(Criteria cri) {
		return dao.getRoomList(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}

	@Override
	public RoomVO roomModify(int idx) {
		return dao.roomModify(idx);
	}

	@Override
	public void roomUpdate(RoomVO roomvo) {
		dao.roomUpdate(roomvo);
		
	}

	@Override
	public void roomDelete(int idx) {
		dao.roomDelete(idx);
		
	}

	

}
