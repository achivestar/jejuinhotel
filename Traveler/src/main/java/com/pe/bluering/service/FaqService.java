package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.domain.FaqVO;

public interface FaqService {

	public void faqAdd(FaqVO faqvo);
	
	public List<FaqVO> listFaq();
	
	public void faqUpdate(FaqVO faqvo);
	
	public void faqDelete(int idx);

	public FaqVO faqModify(int idx);
}
