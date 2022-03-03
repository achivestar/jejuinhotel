package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.BnfVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodVO;
import com.pe.bluering.persistence.FoodDAO;

@Service
public class FoodServiceImpl implements FoodService {

	@Autowired
	private FoodDAO dao;
	
	
	@Override
	public void Insert(FoodVO foodvo) {
		dao.Insert(foodvo);

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
	public List<FoodVO> getFoodList(Criteria cri) {
		return dao.getFoodList(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}

	@Override
	public FoodVO foodModify(int idx) {
		return dao.foodModify(idx);
	}

	@Override
	public void foodUpdate(FoodVO foodvo) {
		dao.foodUpdate(foodvo);
	}

	@Override
	public void foodDelete(int idx) {
		dao.foodDelete(idx);

	}
	
	@Override
	public String getOriginFileName(Integer idx) {
		return dao.getOriginFileName(idx);
	}

	@Override
	public String getSavedFileName(Integer idx) {
		return dao.getSaveFileName(idx);
	}


	@Override
	public String getDeleteFileName(int idx) {
		return dao.getDeleteFileName(idx);
	}

	@Override
	public void bnfUpdate(BnfVO bnfvo) {
		dao.bnfUpdate(bnfvo);
		
	}

	@Override
	public BnfVO getBnf(int idx) {
		return dao.getBnf(idx);
	}




}
