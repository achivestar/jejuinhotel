package com.pe.bluering.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.persistence.TotalDAO;

@Service
public class TotalCountImpl implements TotalCount {

	@Autowired
	private TotalDAO dao;
	
	@Override
	public int getTotalRoom() {
		return dao.getTotalRoom();
	}

	@Override
	public int getTotalFood() {
		return dao.getTotalFood();
	}

	@Override
	public int getTotalFaq() {
		return dao.getTotalFaq();
	}

	@Override
	public int getTotalNews() {
		return dao.getTotalNews();
	}

	@Override
	public int getTotalQna() {
		return dao.getTotalQna();
	}

}
