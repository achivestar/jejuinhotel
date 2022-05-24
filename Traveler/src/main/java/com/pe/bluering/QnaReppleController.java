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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.pe.bluering.domain.QnaReppleVO;
import com.pe.bluering.domain.QnaVO;
import com.pe.bluering.service.QnaService;


@RestController
public class QnaReppleController {

@Autowired
private QnaService qnaservice;

private static final Logger logger = LoggerFactory.getLogger(QnaReppleController.class);

	
	@RequestMapping(value="/qnaReppleRegist", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> qnaReppleRegist(@RequestBody QnaReppleVO qnarepplevo) {
		
		ResponseEntity<String> entity = null;
	    try {
	    	qnaservice.qnaReppleAdd(qnarepplevo);
	    	qnaservice.qnaStateChange(qnarepplevo.getBno());
	        entity = new ResponseEntity<String>("success", HttpStatus.OK);
	      } catch (Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	      } 
	      return entity;


	}

	
	@RequestMapping(value="/qnaAdminReppleUpdate", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> qnaAdminReppleUpdate(@RequestBody QnaReppleVO qnarepplevo) {
		
		ResponseEntity<String> entity = null;
	    try {
	    	
	    	System.out.println("qnaAdminReppleUpdate idx : "+qnarepplevo);
	    	qnaservice.qnaReppleUpdate(qnarepplevo);
	        entity = new ResponseEntity<String>("success", HttpStatus.OK);
	      } catch (Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	      } 
	      return entity;


	}
	
	@RequestMapping(value="/qnaAdminReppleDelete", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> qnaAdminReppleDelete(@RequestBody QnaReppleVO qnarepplevo) {
		
		ResponseEntity<String> entity = null;
	    try {
	    	System.out.println("qnaAdminReppleDelete idx : "+qnarepplevo.getIdx());
	    	qnaservice.qnaAdminReppleDelete(qnarepplevo.getIdx());
	        entity = new ResponseEntity<String>("success", HttpStatus.OK);
	      } catch (Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	      } 
	      return entity;


	}
	
	
	
}
