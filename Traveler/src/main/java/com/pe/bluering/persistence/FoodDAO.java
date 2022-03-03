package com.pe.bluering.persistence;

import java.util.List;

import com.pe.bluering.domain.BnfVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FoodVO;


public interface FoodDAO {

	void Insert(FoodVO foodvo);

	int getCount();

	int getIdx();

	List<FoodVO> getFoodList(Criteria cri);

	int countPaging(Criteria cri);

	FoodVO foodModify(int idx);

	void foodUpdate(FoodVO foodvo);

	void foodDelete(int idx);

	String getOriginFileName(Integer idx);

	String getSaveFileName(Integer idx);

	String getDeleteFileName(int idx);

	void bnfUpdate(BnfVO bnfvo);

	BnfVO getBnf(int idx);
}
