package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.domain.BnfVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodVO;


public interface FoodService {

	public void Insert(FoodVO foodvo);
	
	public int getCount();
	
	public int getIdx();
	
	List<FoodVO> getFoodList(Criteria cri);
	
	public int listCountCriteria(Criteria cri);
	
	FoodVO foodModify(int idx);
	
	void foodUpdate(FoodVO foodvo);

	void foodDelete(int idx);

	public String getOriginFileName(Integer idx);

	public String getSavedFileName(Integer idx);

	public String getDeleteFileName(int idx);

	public void bnfUpdate(BnfVO bnfvo);

	public BnfVO getBnf(int idx);

	public FoodVO getStore(int i);

	public FoodVO getRest(int i);

	public FoodVO getCoffee(int i);

}
