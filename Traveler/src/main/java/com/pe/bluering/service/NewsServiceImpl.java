package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.NewsVO;
import com.pe.bluering.persistence.NewsDAO;

@Service
public class NewsServiceImpl implements NewsService{

	@Autowired
	NewsDAO dao;
	
	
	@Override
	public void Insert(NewsVO newsvo) {
		dao.Insert(newsvo);

	}
	
	@Override
	public List<NewsVO> getNewsList(Criteria cri) {
		return dao.getNewsList(cri);
	}
	

	@Override
	public int getImgCount() {
		return dao.getImgCount();
	}

	@Override
	public int getLastIdx() {
		return dao.getLastIdx();
	}
	
	
	@Override
	public int listCountCriteria(Criteria cri) {
		return dao.countPaging(cri);
	}

	
	
	
	@Override
	public NewsVO newsModify(int idx) {
		return dao.getNewModify(idx);
	}
	

	@Override
	public void newsThumbUpdate(NewsVO newsvo) {
		 dao.newsThumbUpdate(newsvo);
		
	}

	@Override
	public void newsUpdate(NewsVO newsvo) {
		dao.newsUpdate(newsvo);
		
	}

	@Override
	public void newsDelete(int idx) {
		dao.newsDelete(idx);
		
	}

	@Override
	public List<NewsVO> getPrev(int idx) {
		return dao.getPrev(idx);
	}

	@Override
	public List<NewsVO> getNext(int idx) {
		return dao.getNext(idx);
	}

	@Override
	public List<NewsVO> getNewsListIndex() {
		return  dao.getNewsListIndex();
	}



	

}
