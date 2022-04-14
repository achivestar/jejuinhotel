package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.EtcVO;

public interface EtcService {

	public void Insert(EtcVO etcvo);
	
	public int getCount();
	
	public int getIdx();
	
	List<EtcVO> getEtcList(Criteria cri);
	
	public int listCountCriteria(Criteria cri);
	
	EtcVO etcModify(int idx);
	
	void etcUpdate(EtcVO etcvo);

	void etcDelete(int idx);


}
