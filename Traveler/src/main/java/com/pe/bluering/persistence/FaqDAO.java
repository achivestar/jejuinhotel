package com.pe.bluering.persistence;

import java.util.List;

import com.pe.bluering.domain.FaqVO;

public interface FaqDAO {

	public List<FaqVO> faqList();
	
	public void faqAdd(FaqVO faqvo);
	
	public void faqUpdate(FaqVO faqvo);

	public void faqDelete(int idx);

	public FaqVO faqModify(int idx);
}
