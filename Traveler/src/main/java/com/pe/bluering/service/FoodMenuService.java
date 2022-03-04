package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodMenuVO;


public interface FoodMenuService {

	public void Insert(FoodMenuVO foodmenuvo);
	
	public int getCount();
	
	public int getIdx();
	
	List<FoodMenuVO> getFoodMenuList(Criteria cri);
	
	public int listCountCriteria(Criteria cri);
	
	FoodMenuVO foodMenuModify(int idx);
	
	void foodMenuUpdate(FoodMenuVO foodmenuvo);

	void foodMenuDelete(int idx);

	public String getOriginFileName(Integer idx);

	public String getSavedFileName(Integer idx);

	public String getDeleteFileName(int idx);

	public List<FoodMenuVO> getFoodMenuList(String str);

	public List<FoodMenuVO> getBeverageMenuList(String str);
}
