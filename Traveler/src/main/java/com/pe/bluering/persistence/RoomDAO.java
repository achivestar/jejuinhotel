package com.pe.bluering.persistence;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.RoomVO;

public interface RoomDAO {

	void Insert(RoomVO roomvo);

	int getCount();

	int getIdx();

	List<RoomVO> getRoomList(Criteria cri);

	int countPaging(Criteria cri);

	RoomVO roomModify(int idx);

	void roomUpdate(RoomVO roomvo);

	void roomDelete(int idx);
}
