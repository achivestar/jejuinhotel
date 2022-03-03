package com.pe.bluering;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pe.bluering.domain.FaqVO;
import com.pe.bluering.service.FaqService;

@RestController
@RequestMapping("/admin")
public class FaqAdminController {

	@Autowired
	private FaqService faqservice;
	

	
	@RequestMapping(value="/faqRegist", method = RequestMethod.POST)
	public ResponseEntity<String> faqRegist(@RequestBody FaqVO faqvo) {
		
		ResponseEntity<String> entity = null;
		
		try {
			faqservice.faqAdd(faqvo);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/faqUpdate/{idx}", method= RequestMethod.PUT)
	public ResponseEntity<String> faqUpdate(@PathVariable("idx") int idx, @RequestBody FaqVO faqvo) {
		ResponseEntity<String> entity = null;
		
		try {
			faqvo.setIdx(idx);
			faqservice.faqUpdate(faqvo);
			
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@RequestMapping(value="/faqDelete/{idx}", method= RequestMethod.DELETE)
	public ResponseEntity<String> faqDelete(@PathVariable("idx") int idx) {
		ResponseEntity<String> entity = null;
		
		try {
			
			faqservice.faqDelete(idx);
			
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
