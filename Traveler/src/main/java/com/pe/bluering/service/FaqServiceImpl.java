package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.domain.FaqVO;
import com.pe.bluering.persistence.FaqDAO;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqDAO dao;
	@Override
	public void faqAdd(FaqVO faqvo) {
		dao.faqAdd(faqvo);
	}

	@Override
	public List<FaqVO> listFaq() {
		return dao.faqList();
	}

	@Override
	public void faqUpdate(FaqVO faqvo) {
		dao.faqUpdate(faqvo);
	}

	@Override
	public void faqDelete(int idx) {
		dao.faqDelete(idx);

	}

	@Override
	public FaqVO faqModify(int idx) {
		return dao.faqModify(idx);
	}

}
