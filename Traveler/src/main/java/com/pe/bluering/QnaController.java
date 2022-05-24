package com.pe.bluering;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.pe.bluering.domain.QnaVO;
import com.pe.bluering.service.QnaService;


@RestController
public class QnaController {

@Autowired
private QnaService qnaservice;

private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

	
	@RequestMapping(value="/qnaRegist", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> qnaRegist(@RequestBody QnaVO qnavo) {
		
		ResponseEntity<String> entity = null;
	    try {
	    	qnaservice.qnaAdd(qnavo);
	        entity = new ResponseEntity<String>("success", HttpStatus.OK);
	      } catch (Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	      } 
	      return entity;


	}

	@RequestMapping(value="/qnaUpdate", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> qnaUpdate(@RequestBody QnaVO qnavo) {
		
		ResponseEntity<String> entity = null;
	    try {
	    	qnaservice.qnaUpdate(qnavo);
	        entity = new ResponseEntity<String>("success", HttpStatus.OK);
	      } catch (Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	      } 
	      return entity;


	}

	
	@RequestMapping(value="/qnaDelete", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> qnaDelete(@RequestBody QnaVO qnavo) {
		
		ResponseEntity<String> entity = null;
	    try {
	    	qnaservice.qnaReppleDelete(qnavo);
	    	Thread.sleep(2000); 
	    	qnaservice.qnaDelete(qnavo);
	        entity = new ResponseEntity<String>("success", HttpStatus.OK);
	      } catch (Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	      } 
	      return entity;


	}
	
}
