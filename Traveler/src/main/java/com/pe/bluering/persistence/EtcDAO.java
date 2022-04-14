package com.pe.bluering.persistence;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.EtcVO;


public interface EtcDAO {

	void Insert(EtcVO etcvo);

	int getCount();

	int getIdx();

	List<EtcVO> getEtcList(Criteria cri);

	int countPaging(Criteria cri);

	EtcVO etcModify(int idx);

	void etcUpdate(EtcVO etcvo);

	void etcDelete(int idx);



}
