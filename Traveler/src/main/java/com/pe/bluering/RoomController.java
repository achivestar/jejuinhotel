package com.pe.bluering;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
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

import com.pe.bluering.domain.RoomVO;
import com.pe.bluering.service.RoomService;

import net.coobird.thumbnailator.Thumbnails;


@RestController
@RequestMapping("/admin")
public class RoomController {

@Autowired
private RoomService roomservice;

private static final Logger logger = LoggerFactory.getLogger(RoomController.class);

	
	@RequestMapping(value="/roomRegist", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> roomRegist(
			@RequestParam("article_file") List<MultipartFile> multipartFile
			,RoomVO roomvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/roomfileupload/";
	    String UPLOAD_PATH = root_path+attach_path;
	
		int idx = 0;
	    if(roomservice.getCount()==0) {

	    	idx = 1;
	    }else {
	    	 idx = roomservice.getIdx()+1;
	    	 System.out.println(roomservice.getIdx());
	   
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
			
		

		
	    fileRoot = contextRoot + "resources/roomfileupload/"+idx+"/";
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
						
					} catch (Exception e) {
						//파일삭제
						FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
						e.printStackTrace();
						break;
					}
					
					if(i==1) {
						roomvo.setOriginalFileName1(originalFileName);
						roomvo.setSavedFileName1(savedFileName);
						
//						File targetFilethumb = new File(fileRoot + roomvo.getSavedFileName1());	
//						
//						// 썸네일 생성
//						File thumbnailFile = new File(fileRoot, "s_" + savedFileName);	
//						
//						BufferedImage bo_image = ImageIO.read(targetFilethumb);
//
//							//비율 
//							double ratio = 9;
//							//넓이 높이
//							int width = (int) (bo_image.getWidth() / ratio);
//							int height = (int) (bo_image.getHeight() / ratio);					
//						
//						
//						Thumbnails.of(targetFile)
//				        .size(width, height)
//				        .toFile(thumbnailFile);
						
					}else if(i==2) {
						roomvo.setOriginalFileName2(originalFileName);
						roomvo.setSavedFileName2(savedFileName);
					}else if(i==3) {
						roomvo.setOriginalFileName3(originalFileName);
						roomvo.setSavedFileName3(savedFileName);
					}
				
				
				
					
					i++;
				}
				
				roomservice.Insert(roomvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				roomservice.Insert(roomvo);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	
	
	
	@RequestMapping(value="/roomUpdate", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> roomUpdate(
			@RequestParam("article_file") List<MultipartFile> multipartFile
			,RoomVO roomvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		int idx = roomvo.getIdx();
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/roomfileupload/";
	    String UPLOAD_PATH = root_path+attach_path;

			response.setHeader("Pragma", "public");
			response.setHeader("Expires", "0");
			response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
			response.setHeader("Content-type", "application-download");
			response.setHeader("Content-Disposition", "attachment; filename=" + multipartFile);
			response.setHeader("Content-Transfer-Encoding", "binary");
			
		

		
	    fileRoot = contextRoot + "resources/roomfileupload/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);

		try {
			roomvo.setOriginalFileName1(roomvo.getOriginalFileName1());
			roomvo.setOriginalFileName2(roomvo.getOriginalFileName2());
			roomvo.setOriginalFileName3(roomvo.getOriginalFileName3());
			roomvo.setSavedFileName1(roomvo.getSavedFileName1());
			roomvo.setSavedFileName2(roomvo.getSavedFileName2());
			roomvo.setSavedFileName3(roomvo.getSavedFileName3());
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
						
					} catch (Exception e) {
						//파일삭제
						FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
						e.printStackTrace();
						break;
					}
					
					if(i==1) {
						roomvo.setOriginalFileName1(originalFileName);
						roomvo.setSavedFileName1(savedFileName);

						
					}else if(i==2) {
						roomvo.setOriginalFileName2(originalFileName);
						roomvo.setSavedFileName2(savedFileName);
					}else if(i==3) {
						roomvo.setOriginalFileName3(originalFileName);
						roomvo.setSavedFileName3(savedFileName);
					}
				
				
				
					
					i++;
				}
			
				roomservice.roomUpdate(roomvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else {
				
				roomservice.roomUpdate(roomvo);
				entity = new ResponseEntity<String>("success",HttpStatus.OK);
				
			}
				
				
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	

	
	@RequestMapping(value="/roomDelete", method=RequestMethod.POST) 
	@ResponseBody
	public ResponseEntity<String> roomDelete(RoomVO roomvo, HttpServletRequest request,HttpServletResponse response) {
		
		ResponseEntity<String> entity = null;
		int idx = roomvo.getIdx();
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
	

		
	    fileRoot = contextRoot + "resources/roomfileupload/"+idx+"/";
	    System.out.println("fileRoot : " +fileRoot);	
		try {
			 deleteFile(fileRoot);
			 roomservice.roomDelete(idx);
			 
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
}
