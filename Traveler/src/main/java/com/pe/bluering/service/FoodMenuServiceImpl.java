package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodMenuVO;
import com.pe.bluering.persistence.FoodMenuDAO;

@Service
public class FoodMenuServiceImpl implements FoodMenuService {

	@Autowired
	private FoodMenuDAO dao;
	
	@Override
	public void Insert(FoodMenuVO foodmenuvo) {
		dao.Insert(foodmenuvo);

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
	public List<FoodMenuVO> getFoodMenuList(Criteria cri) {
		return dao.getFoodMenuList(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}

	@Override
	public FoodMenuVO foodMenuModify(int idx) {
		return dao.foodMenuModify(idx);
	}

	@Override
	public void foodMenuUpdate(FoodMenuVO foodmenuvo) {
		dao.foodMenuUpdate(foodmenuvo);

	}

	@Override
	public void foodMenuDelete(int idx) {
		dao.foodMenuDelete(idx);

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
	public List<FoodMenuVO> getFoodMenuList(String str) {
		return dao.getFoodMenuList(str);
	}

	@Override
	public List<FoodMenuVO> getBeverageMenuList(String str) {
		return dao.getBeverageMenuList(str);
	}

}
