package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.RoomVO;

public interface RoomService {

	public void Insert(RoomVO roomvo);
	
	public int getCount();
	
	public int getIdx();
	
	List<RoomVO> getRoomList(Criteria cri);
	
	public int listCountCriteria(Criteria cri);
	
	RoomVO roomModify(int idx);
	
	void roomUpdate(RoomVO roomvo);

	void roomDelete(int idx);
}
