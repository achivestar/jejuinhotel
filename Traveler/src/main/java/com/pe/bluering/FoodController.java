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
import org.apache.ibatis.reflection.SystemMetaObject;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.pe.bluering.domain.BnfVO;
import com.pe.bluering.domain.FoodVO;
import com.pe.bluering.domain.RoomVO;
import com.pe.bluering.service.FoodService;


@Controller
@RequestMapping("/admin")
public class FoodController {

	@Autowired
	private FoodService foodservice;

	private static final Logger logger = LoggerFactory.getLogger(FoodController.class);
	
	
	@RequestMapping(value="/foodRegist", method=RequestMethod.POST) 
	public String foodRegist(MultipartFile file, Model model, FoodVO foodvo,HttpServletRequest request) throws IOException {
		 logger.info("originalName" + file.getOriginalFilename());
		 
		  String root_path = request.getSession().getServletContext().getRealPath("/");  
	      String attach_path = "resources/foodfileupload/";
		  String uploadPath = root_path+attach_path;
		  String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		  String fileRoot;
		 	int idx = 0;
		    if(foodservice.getCount()==0) {
		    	idx = 1;
		    }else {
		    	 idx = foodservice.getIdx()+1;

		    }
		    
			File Folder = new File(uploadPath+"/"+idx);

			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); 
				    
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		     }else {
				
		     }

			
			 fileRoot = contextRoot + "resources/foodfileupload/"+idx+"/";
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
	    	foodvo.setOriginalFileName(file.getOriginalFilename());
	    	foodvo.setSavedFileName(savedName);
	    	 logger.info("foodvo : " + foodvo);
	    	 foodservice.Insert(foodvo);
		logger.info("savedName" + savedName +", uploadPath :" +uploadPath);
		
		return "redirect:/admin/food";
	}
	
	
	@RequestMapping(value="/foodRegist2", method=RequestMethod.POST) 
	public String foodRegist2(MultipartFile file, Model model, FoodVO foodvo,HttpServletRequest request) throws IOException {
		 logger.info("originalName" + file.getOriginalFilename());
		 
		  String root_path = request.getSession().getServletContext().getRealPath("/");  
	      String attach_path = "resources/foodfileupload/";
		  String uploadPath = root_path+attach_path;
		  String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		  String fileRoot;
		 	int idx = 0;
		    if(foodservice.getCount()==0) {
		    	idx = 1;
		    }else {
		    	 idx = foodservice.getIdx()+1;

		    }
		    
			File Folder = new File(uploadPath+"/"+idx);

			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); 
				    
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		     }else {
				
		     }

			
			 fileRoot = contextRoot + "resources/foodfileupload/"+idx+"/";
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
	    	foodvo.setOriginalFileName(file.getOriginalFilename());
	    	foodvo.setSavedFileName(savedName);
	    	 logger.info("foodvo : " + foodvo);
	    	 foodservice.Insert(foodvo);
		logger.info("savedName" + savedName +", uploadPath :" +uploadPath);
		
		return "redirect:/admin/food";
	}


	
	@RequestMapping(value="/foodRegist3", method=RequestMethod.POST) 
	public String foodRegist3(MultipartFile file, Model model, FoodVO foodvo,HttpServletRequest request) throws IOException {
		  logger.info("originalName" + file.getOriginalFilename());
		 
		  String root_path = request.getSession().getServletContext().getRealPath("/");  
	      String attach_path = "resources/foodfileupload/";
		  String uploadPath = root_path+attach_path;
		  String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		  String fileRoot;
		 	int idx = 0;
		    if(foodservice.getCount()==0) {
		    	idx = 1;
		    }else {
		    	 idx = foodservice.getIdx()+1;

		    }
		    
			File Folder = new File(uploadPath+"/"+idx);

			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); 
				    
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		     }else {
				
		     }

			
			 fileRoot = contextRoot + "resources/foodfileupload/"+idx+"/";
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
	    	foodvo.setOriginalFileName(file.getOriginalFilename());
	    	foodvo.setSavedFileName(savedName);
	    	 logger.info("foodvo : " + foodvo);
	    	 foodservice.Insert(foodvo);
		logger.info("savedName" + savedName +", uploadPath :" +uploadPath);
		
		return "redirect:/admin/food";
	}
	
	
	
	@RequestMapping(value="/foodRegist4", method=RequestMethod.POST) 
	public String foodRegist4(Model model, BnfVO bnfvo,HttpServletRequest request) throws IOException {	
		foodservice.bnfUpdate(bnfvo);
		return "redirect:/admin/food";
	}
	
	
	@RequestMapping(value="/foodUpdate", method = RequestMethod.POST)
	public String foodUpdate(MultipartFile file, Model model, FoodVO foodvo,HttpServletRequest request) throws IOException {
		
		System.out.println("update mapping start");
		 String root_path = request.getSession().getServletContext().getRealPath("/");  
		 int idx = foodvo.getIdx();
	     String attach_path = "resources/foodfileupload/"+idx;
		 String uploadPath = root_path+attach_path;
		 logger.info("fileupload : " + uploadPath);
		System.out.println("idx :"  + foodvo.getIdx());
		String delFileName = getDeleteFileName(foodvo.getIdx());
		//String delFileName = getDeleteFileName(foodvo.getIdx());
		//System.out.println("getDeleteFileName : " + delFileName);
		
		if(file.getOriginalFilename().equals("")) {
			logger.info("파일업로드 파일이 비어있을때");
			String getSaveFileName = getSavedFileName(foodvo.getIdx());
			String getOriginFileName = getOriginFileName(foodvo.getIdx());
			foodvo.setSavedFileName(getSaveFileName);
			foodvo.setOriginalFileName(getOriginFileName);
			foodservice.foodUpdate(foodvo);
		}else {
			logger.info("파일업로드 파일이 비어있을때 있지 않을 때");
			String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(),uploadPath);
			foodvo.setSavedFileName(savedName);
			foodvo.setOriginalFileName(file.getOriginalFilename());
			foodservice.foodUpdate(foodvo);
		}
	
		System.out.println("update mapping end");
		
		return "redirect:/admin/food";
	}
	
	
	

	private String uploadFile(String originalFilename, byte[] fileData, String uploadPath) throws IOException {
		
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString()+"_"+originalFilename;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

	
	@RequestMapping(value="/foodDelete", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> foodDelete(FoodVO foodvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		int idx = foodvo.getIdx();
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
	

		
	    fileRoot = contextRoot + "resources/foodfileupload/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);	
		try {
			 deleteFile(fileRoot);
			 foodservice.foodDelete(idx);
			 
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
		return  foodservice.getDeleteFileName(idx);
	}


	private String getOriginFileName(Integer idx) {
		return  foodservice.getOriginFileName(idx);
	}

	private String getSavedFileName(Integer idx) {
		return  foodservice.getSavedFileName(idx);
	}
}
