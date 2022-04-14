package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.EtcVO;
import com.pe.bluering.persistence.EtcDAO;

@Service
public class EtcServiceImpl implements EtcService {

	@Autowired
	private EtcDAO dao;
	
	@Override
	public void Insert(EtcVO etcvo) {
		dao.Insert(etcvo);
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
	public List<EtcVO> getEtcList(Criteria cri) {
		return dao.getEtcList(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}

	@Override
	public EtcVO etcModify(int idx) {
		return dao.etcModify(idx);
	}

	@Override
	public void etcUpdate(EtcVO etcvo) {
		dao.etcUpdate(etcvo);
		
	}

	@Override
	public void etcDelete(int idx) {
		dao.etcDelete(idx);
		
	}
	

}
