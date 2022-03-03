package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NewsVO;

public interface NewsService {

	void Insert(NewsVO newsvo);

	int getImgCount();

	int getLastIdx();
	
	List<NewsVO> getNewsList(Criteria cri);
	
	public int listCountCriteria(Criteria cri);
	
	NewsVO newsModify(int idx);
	
	void newsUpdate(NewsVO newsvo);

	void newsThumbUpdate(NewsVO newsvo);

	void newsDelete(int idx);

	List<NewsVO> getPrev(int idx);

	List<NewsVO> getNext(int idx);

	List<NewsVO> getNewsListIndex();

	

	

	
}
