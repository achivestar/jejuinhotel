package com.pe.bluering;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pe.bluering.domain.FoodMenuVO;
import com.pe.bluering.domain.FoodVO;
import com.pe.bluering.service.FoodMenuService;

@Controller
@RequestMapping("/admin")
public class FoodMenuController {

	@Autowired
	private FoodMenuService foodmenuservice;

	private static final Logger logger = LoggerFactory.getLogger(FoodController.class);
	
	
	@RequestMapping(value="/foodMenuRegist", method=RequestMethod.POST) 
	public String foodMenuRegist(MultipartFile file, Model model, FoodMenuVO foodmenuvo,HttpServletRequest request) throws IOException {
		 logger.info("originalName" + file.getOriginalFilename());
		 
		  String root_path = request.getSession().getServletContext().getRealPath("/");  
	      String attach_path = "resources/foodmenufileupload/";
		  String uploadPath = root_path+attach_path;
		  String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		  String fileRoot;
		 	int idx = 0;
		    if(foodmenuservice.getCount()==0) {
		    	idx = 1;
		    }else {
		    	 idx = foodmenuservice.getIdx()+1;

		    }

			
			 fileRoot = contextRoot + "resources/foodmenufileupload/"+idx+"/";
			    System.out.println("fileRoot : " +fileRoot);
			    File Folders = new File(fileRoot);

				
				if (!Folders.exists()) {
					try{
					    Folders.mkdir(); 
					    
				        } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			     }else {
					
			      }

		    logger.info("uploadPath : " + fileRoot);
	    	String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(),fileRoot);
	    	foodmenuvo.setOriginalFileName(file.getOriginalFilename());
	    	foodmenuvo.setSavedFileName(savedName);
	    	 logger.info("foodmenuvo : " + foodmenuvo);
	    	 foodmenuservice.Insert(foodmenuvo);
		logger.info("savedName" + savedName +", uploadPath :" +uploadPath);
		
		return "redirect:/admin/foodmenu";
	}
	
	
	
	
	@RequestMapping(value="/foodMenuUpdate", method = RequestMethod.POST)
	public String foodUpdate1(MultipartFile file, Model model, FoodMenuVO foodmenuvo,HttpServletRequest request) throws IOException {
		
	 	System.out.println("update mapping start");
		 String root_path = request.getSession().getServletContext().getRealPath("/");  
		 int idx = foodmenuvo.getIdx();
	     String attach_path = "resources/foodmenufileupload/"+idx;
		 String uploadPath = root_path+attach_path;
		 logger.info("fileupload : " + uploadPath);
		System.out.println("idx :"  + foodmenuvo.getIdx());
		String delFileName = getDeleteFileName(foodmenuvo.getIdx());
		
		if(file.getOriginalFilename().equals("")) {
			logger.info("파일업로드 파일이 비어있을때");
			String getSaveFileName = getSavedFileName(foodmenuvo.getIdx());
			String getOriginFileName = getOriginFileName(foodmenuvo.getIdx());
			foodmenuvo.setSavedFileName(getSaveFileName);
			foodmenuvo.setOriginalFileName(getOriginFileName);
			foodmenuservice.foodMenuUpdate(foodmenuvo);
		}else {
			logger.info("파일업로드 파일이 비어있을때 있지 않을 때");
			String savedName = uploadUpdateFile(file.getOriginalFilename(), file.getBytes(),request,uploadPath,delFileName);
			foodmenuvo.setSavedFileName(savedName);
			foodmenuvo.setOriginalFileName(file.getOriginalFilename());
			foodmenuservice.foodMenuUpdate(foodmenuvo);
		}
	
		System.out.println("update mapping end");
		
		return "redirect:/admin/foodmenu";
	}
	
	
	
	
	






	



	@RequestMapping(value="/foodMenuDelete", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> foodMenuDelete(FoodMenuVO foodmenuvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		int idx = foodmenuvo.getIdx();
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
	

		
	    fileRoot = contextRoot + "resources/foodmenufileupload/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);	
		try {
			 deleteFile(fileRoot);
			 foodmenuservice.foodMenuDelete(idx);
			 
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}


	private void deleteFile(String fileRoot) {
		File deleteFolder = new File(fileRoot);

		if(deleteFolder.exists()){
			File[] deleteFolderList = deleteFolder.listFiles();
			System.out.println("Delete Folder List :" + deleteFolderList);
			for (int i = 0; i < deleteFolderList.length; i++) {
				if(deleteFolderList[i].isFile()) {
					deleteFolderList[i].delete();
				}else {
					deleteFile(deleteFolderList[i].getPath());
				}
				deleteFolderList[i].delete(); 
			}
			deleteFolder.delete();
		}
		
	}
	
	
	
	private String getDeleteFileName(int idx) {
		return  foodmenuservice.getDeleteFileName(idx);
	}


	private String getOriginFileName(Integer idx) {
		return  foodmenuservice.getOriginFileName(idx);
	}

	private String getSavedFileName(Integer idx) {
		return  foodmenuservice.getSavedFileName(idx);
	}




	private String uploadFile(String originalFilename, byte[] fileData, String uploadPath) throws IOException {
		
	  
		
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString()+"_"+originalFilename;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	
	

	
	private String uploadUpdateFile(String originalFilename, byte[] fileData, HttpServletRequest request, String uploadPath, String delFileName) throws IOException {
		
	    
	    String deleteFileName = uploadPath+"/"+delFileName;
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    
       
        if(deleteFile.exists()) {
            
            deleteFile.delete(); 

        } else {
       
            
        }
		
	    
        UUID uid = UUID.randomUUID();
		String savedName = uid.toString()+"_"+originalFilename;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;


	}



}
