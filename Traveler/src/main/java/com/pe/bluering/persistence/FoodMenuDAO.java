package com.pe.bluering.persistence;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodMenuVO;


public interface FoodMenuDAO {

	void Insert(FoodMenuVO foodmenuvo);

	int getCount();

	int getIdx();

	List<FoodMenuVO> getFoodMenuList(Criteria cri);

	int countPaging(Criteria cri);

	FoodMenuVO foodMenuModify(int idx);

	void foodMenuUpdate(FoodMenuVO foodmenuvo);

	void foodMenuDelete(int idx);

	String getOriginFileName(Integer idx);

	String getSaveFileName(Integer idx);

	String getDeleteFileName(int idx);

	List<FoodMenuVO> getFoodMenuList(String str);

	List<FoodMenuVO> getBeverageMenuList(String str);
}
