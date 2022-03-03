package com.pe.bluering.persistence;

import java.util.List;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NewsVO;


public interface NewsDAO {

	void Insert(NewsVO newsvo);

	int getImgCount();

	int getLastIdx();

	List<NewsVO> getNewsList(Criteria cri);
	
	public int countPaging(Criteria cri);
	
	NewsVO getNewModify(int idx);

	void newsUpdate(NewsVO newsvo);

	void newsThumbUpdate(NewsVO newsvo);

	void newsDelete(int idx);

	List<NewsVO> getPrev(int idx);

	List<NewsVO> getNext(int idx);

	List<NewsVO> getNewsListIndex();

	
	

	

	
}
