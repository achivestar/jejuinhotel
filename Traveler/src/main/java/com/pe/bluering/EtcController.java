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
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.pe.bluering.domain.EtcVO;
import com.pe.bluering.service.EtcService;



@RestController
@RequestMapping("/admin")
public class EtcController {

@Autowired
private EtcService etcservice;

private static final Logger logger = LoggerFactory.getLogger(EtcController.class);

	
	@RequestMapping(value="/etcRegist", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> etcRegist(
			@RequestParam("article_file") List<MultipartFile> multipartFile
			,EtcVO etcvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/etcfileupload/";
	    String UPLOAD_PATH = root_path+attach_path;
	
		int idx = 0;
	    if(etcservice.getCount()==0) {

	    	idx = 1;
	    }else {
	    	 idx = etcservice.getIdx()+1;
	    	 System.out.println(etcservice.getIdx());
	   
	    }
	    
	    
		
			 File Folder = new File(UPLOAD_PATH+"/"+idx);

				
				if (!Folder.exists()) {
					try{
					    Folder.mkdir(); 
					    
				        } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			     }else {
					
			     }

			response.setHeader("Pragma", "public");
			response.setHeader("Expires", "0");
			response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
			response.setHeader("Content-type", "application-download");
			response.setHeader("Content-Disposition", "attachment; filename=" + multipartFile);
			response.setHeader("Content-Transfer-Encoding", "binary");
			
		

		
	    fileRoot = contextRoot + "resources/etcfileupload/"+idx+"/";
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
		
		
		
		try {
			// 파일이 있을때 탄다.
			if(multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
				
				response.setHeader("Pragma", "public");
				response.setHeader("Expires", "0");
				response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
				response.setHeader("Content-type", "application-download");
				response.setHeader("Content-Disposition", "attachment; filename=" + multipartFile);
				response.setHeader("Content-Transfer-Encoding", "binary");
			
				
				int i =1;
				
				for(MultipartFile file:multipartFile) {
					//fileRoot = contextRoot + "resources/roomfileupload/";
					System.out.println("fileRoot"+fileRoot);
					
					String originalFileName = file.getOriginalFilename();	//오리지날 파일명
					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
					String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
					
					File targetFile = new File(fileRoot + savedFileName);	
					try {
						InputStream fileStream = file.getInputStream();
						FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
						etcvo.setCount(i);
					} catch (Exception e) {
						//파일삭제
						FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
						e.printStackTrace();
						break;
					}
					
					if(i==1) {
						etcvo.setOriginalFileName1(originalFileName);
						etcvo.setSavedFileName1(savedFileName);
					}else if(i==2) {
						etcvo.setOriginalFileName2(originalFileName);
						etcvo.setSavedFileName2(savedFileName);
					}else if(i==3) {
						etcvo.setOriginalFileName3(originalFileName);
						etcvo.setSavedFileName3(savedFileName);
					}else if(i==4) {
						etcvo.setOriginalFileName4(originalFileName);
						etcvo.setSavedFileName4(savedFileName);
					}else if(i==5) {
						etcvo.setOriginalFileName5(originalFileName);
						etcvo.setSavedFileName5(savedFileName);
					}
				
				
				
					
					i++;
				}
				
				etcservice.Insert(etcvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else {
				etcservice.Insert(etcvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
			}
				
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/etcUpdate2", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> etcUpdate2(
			@RequestParam("article_file") List<MultipartFile> multipartFile
			,EtcVO etcvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		
		
		// 삭제 작업
		int idx = etcvo.getIdx();
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
	

		
	    fileRoot = contextRoot + "resources/etcfileupload/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);	
		try {
			 deleteFile(fileRoot);
			// etcservice.etcChangeView(idx);
			 
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		//삭제 후 다시 insert 작업
		
		
		//String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		//String fileRoot;
		
		String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/etcfileupload/";
	    String UPLOAD_PATH = root_path+attach_path;
	
		idx = 0;
	    if(etcservice.getCount()==0) {

	    	idx = 1;
	    }else {
	    	 idx = etcservice.getIdx()+1;
	    	 System.out.println(etcservice.getIdx());
	   
	    }
	    
	    
		
			 File Folder = new File(UPLOAD_PATH+"/"+idx);

				
				if (!Folder.exists()) {
					try{
					    Folder.mkdir(); 
					    
				       } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			     }else {
					
			     }

			response.setHeader("Pragma", "public");
			response.setHeader("Expires", "0");
			response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
			response.setHeader("Content-type", "application-download");
			response.setHeader("Content-Disposition", "attachment; filename=" + multipartFile);
			response.setHeader("Content-Transfer-Encoding", "binary");
			
		

		
	    fileRoot = contextRoot + "resources/etcfileupload/"+idx+"/";
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
		
		
		
		try {
			// 파일이 있을때 탄다.
			if(multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
				
				response.setHeader("Pragma", "public");
				response.setHeader("Expires", "0");
				response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
				response.setHeader("Content-type", "application-download");
				response.setHeader("Content-Disposition", "attachment; filename=" + multipartFile);
				response.setHeader("Content-Transfer-Encoding", "binary");
			
				
				int i =1;
				
				for(MultipartFile file:multipartFile) {
					//fileRoot = contextRoot + "resources/roomfileupload/";
					System.out.println("fileRoot"+fileRoot);
					
					String originalFileName = file.getOriginalFilename();	//오리지날 파일명
					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
					String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
					
					File targetFile = new File(fileRoot + savedFileName);	
					try {
						InputStream fileStream = file.getInputStream();
						FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
						etcvo.setCount(i);
					} catch (Exception e) {
						//파일삭제
						FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
						e.printStackTrace();
						break;
					}
					
					if(i==1) {
						etcvo.setOriginalFileName1(originalFileName);
						etcvo.setSavedFileName1(savedFileName);
					}else if(i==2) {
						etcvo.setOriginalFileName2(originalFileName);
						etcvo.setSavedFileName2(savedFileName);
					}else if(i==3) {
						etcvo.setOriginalFileName3(originalFileName);
						etcvo.setSavedFileName3(savedFileName);
					}else if(i==4) {
						etcvo.setOriginalFileName4(originalFileName);
						etcvo.setSavedFileName4(savedFileName);
					}else if(i==5) {
						etcvo.setOriginalFileName5(originalFileName);
						etcvo.setSavedFileName5(savedFileName);
					}
				
				
				
					
					i++;
				}
				
				etcservice.Insert(etcvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else {
				etcservice.Insert(etcvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
			}
				
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	
	@RequestMapping(value="/etcUpdate", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> etcUpdate(
			@RequestParam("article_file") List<MultipartFile> multipartFile
			,EtcVO etcvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		int idx = etcvo.getIdx();
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/etcfileupload/";
	    String UPLOAD_PATH = root_path+attach_path;

			response.setHeader("Pragma", "public");
			response.setHeader("Expires", "0");
			response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
			response.setHeader("Content-type", "application-download");
			response.setHeader("Content-Disposition", "attachment; filename=" + multipartFile);
			response.setHeader("Content-Transfer-Encoding", "binary");
			
		

		
	    fileRoot = contextRoot + "resources/etcfileupload/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);

		try {
			etcvo.setOriginalFileName1(etcvo.getOriginalFileName1());
			etcvo.setOriginalFileName2(etcvo.getOriginalFileName2());
			etcvo.setOriginalFileName3(etcvo.getOriginalFileName3());
			etcvo.setOriginalFileName4(etcvo.getOriginalFileName4());
			etcvo.setOriginalFileName5(etcvo.getOriginalFileName5());
			etcvo.setSavedFileName1(etcvo.getSavedFileName1());
			etcvo.setSavedFileName2(etcvo.getSavedFileName2());
			etcvo.setSavedFileName3(etcvo.getSavedFileName3());
			etcvo.setSavedFileName4(etcvo.getSavedFileName4());
			etcvo.setSavedFileName5(etcvo.getSavedFileName5());
			// 파일이 있을때 탄다.
			if(multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
				
				response.setHeader("Pragma", "public");
				response.setHeader("Expires", "0");
				response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
				response.setHeader("Content-type", "application-download");
				response.setHeader("Content-Disposition", "attachment; filename=" + multipartFile);
				response.setHeader("Content-Transfer-Encoding", "binary");
				
				
				String delFileName1 = etcvo.getSavedFileName1();
				String delFileName2 = etcvo.getSavedFileName2();
				String delFileName3 = etcvo.getSavedFileName3();
				String delFileName4 = etcvo.getSavedFileName4();
				String delFileName5 = etcvo.getSavedFileName5();
				System.out.println("del1 " + delFileName1+",del2 :"+delFileName2+", del3 :" +delFileName3+", del4 :"+delFileName4 +" , del5 :" +delFileName5);
				
				uploadUpdateFile(fileRoot,delFileName1,delFileName2,delFileName3,delFileName4,delFileName5);
				
				int i =1;
				
				for(MultipartFile file:multipartFile) {
					//fileRoot = contextRoot + "resources/roomfileupload/";
					System.out.println("fileRoot"+fileRoot);
					
					String originalFileName = file.getOriginalFilename();	//오리지날 파일명
					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
					String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
					
					
					//String savedName = uploadUpdateFile(file.getOriginalFilename(), file.getBytes(),request,fileRoot,delFileName);

					File targetFile = new File(fileRoot + savedFileName);	
					try {
						InputStream fileStream = file.getInputStream();
						FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
						etcvo.setCount(i);
						
					} catch (Exception e) {
						//파일삭제
						FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
						e.printStackTrace();
						break;
					}
					
					if(i==1) {
						etcvo.setOriginalFileName1(originalFileName);
						etcvo.setSavedFileName1(savedFileName);	
					}else if(i==2) {
						etcvo.setOriginalFileName2(originalFileName);
						etcvo.setSavedFileName2(savedFileName);
					}else if(i==3) {
						etcvo.setOriginalFileName3(originalFileName);
						etcvo.setSavedFileName3(savedFileName);
					}else if(i==4) {
						etcvo.setOriginalFileName4(originalFileName);
						etcvo.setSavedFileName4(savedFileName);
					}else if(i==5) {
						etcvo.setOriginalFileName5(originalFileName);
						etcvo.setSavedFileName5(savedFileName);
					}

					
					i++;
				}
				
	
				etcservice.etcUpdate(etcvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else {

				etcservice.etcUpdate(etcvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
				
			}
				
				
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	

	
	@RequestMapping(value="/etcDelete", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> etcDelete(EtcVO etcvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		int idx = etcvo.getIdx();
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
	

		
	    fileRoot = contextRoot + "resources/etcfileupload/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);	
		try {
			 deleteFile(fileRoot);
			 etcservice.etcDelete(idx);
			 
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





	public String uploadFile(String originalFilename, byte[] bytes, String uploadPath) throws IOException {
		
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString()+"_"+originalFilename;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(bytes,target);
		
		
		return savedName;
	}
	
	
	private void uploadUpdateFile(String uploadPath, String delFileName1,String delFileName2,String delFileName3,String delFileName4,String delFileName5) throws IOException {
		
		if(delFileName1 != null) {
			 String deleteFileName1 = uploadPath+delFileName1;
			 System.out.println("DeleteFileName1 : " + deleteFileName1);
			 File deleteFile = new File(deleteFileName1);
			 if(deleteFile.exists()) {
		            deleteFile.delete(); 
		      }
		}
		if(delFileName2 != null) {
			 String deleteFileName2 = uploadPath+delFileName2;
			 System.out.println("DeleteFileName2 : " + deleteFileName2);
			 File deleteFile = new File(deleteFileName2);
			 if(deleteFile.exists()) {
		            deleteFile.delete(); 
		      }
		}
		if(delFileName3 != null) {
			 String deleteFileName3 = uploadPath+delFileName3;
			 System.out.println("DeleteFileName3 : " + deleteFileName3);
			 File deleteFile = new File(deleteFileName3);
			 if(deleteFile.exists()) {
		            deleteFile.delete(); 
		      }
		}
		if(delFileName4 != null) {
			 String deleteFileName4 = uploadPath+delFileName4;
			 System.out.println("DeleteFileName4 : " + deleteFileName4);
			 File deleteFile = new File(deleteFileName4);
			 if(deleteFile.exists()) {
		            deleteFile.delete(); 
		      }
		}
		if(delFileName5 != null) {
			 String deleteFileName5 = uploadPath+delFileName5;
			 System.out.println("DeleteFileName5 : " + deleteFileName5);
			 File deleteFile = new File(deleteFileName5);
			 if(deleteFile.exists()) {
		            deleteFile.delete(); 
		      }
		}
	   
	   
       
       

	}
}
