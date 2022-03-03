package com.pe.bluering;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.pe.bluering.domain.BnfVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.FaqVO;
import com.pe.bluering.domain.FoodVO;
import com.pe.bluering.domain.LoginDTO;
import com.pe.bluering.domain.NewsVO;
import com.pe.bluering.domain.PageMaker;
import com.pe.bluering.domain.RoomVO;
import com.pe.bluering.domain.UserVO;
import com.pe.bluering.service.FaqService;
import com.pe.bluering.service.FoodService;
import com.pe.bluering.service.NewsService;
import com.pe.bluering.service.RoomService;
import com.pe.bluering.service.UserService;


@Controller
@RequestMapping("/admin")
public class AdminController {

	
private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private UserService service;

	@Autowired
	private NewsService newsservice;
	
	@Autowired
	private RoomService roomservice;
	
	@Autowired
	private FoodService foodservice;
	
	@Autowired
	private FaqService faqservice;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/admin/login";
	}
	
	@RequestMapping(value="/loginPost", method=RequestMethod.POST) 
	public void loginPost(LoginDTO dto, HttpSession session, Model model) {
		UserVO vo = service.login(dto);
		
		if(vo == null) {
			return;
		}
		
		model.addAttribute("userVO",vo);
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET) 
	public String logout(HttpSession session) {
		
		Object obj = session.getAttribute("login");
		
		if(obj!=null) {
			session.removeAttribute("login");
			session.invalidate();
			logger.info("admin logout");
			
		}
		return "redirect:/admin";
	}
	
	
	
	@RequestMapping(value="/index", method=RequestMethod.GET) 
	public String index( Model model) {
		logger.info("admin page welcome");
		
		return "/admin/index";
	}
	
	
	@RequestMapping(value="/news", method=RequestMethod.GET) 
	public String news( NewsVO newsvo, Model model,Criteria cri) {
		 logger.info("admin page news page");
		 
		 List<NewsVO> newsList = newsservice.getNewsList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(newsservice.listCountCriteria(cri));
		 
		 model.addAttribute("newsList", newsList);
		 model.addAttribute("pageMaker",pageMaker);
		 logger.info("admin page newsWrite list page : "+newsList);
		 return "/admin/news";
	}
	
	@RequestMapping(value="/newsWrite", method=RequestMethod.GET) 
	public String newsWrite( Model model) {
		logger.info("admin page newsWrite get page");
		
		return "/admin/newsWrite";
	}
	
	
	@RequestMapping(value="/newsRegist", method=RequestMethod.POST) 
	public String newsRegist(NewsVO newsvo, Model model) throws IOException {
		logger.info("admin page newsWrite post page");
		
	;
		newsservice.Insert(newsvo);
		
		return "redirect:/admin/news";
	}
	
	/**/

	@RequestMapping(value = {"/newsUpdate"}, method = {RequestMethod.POST})
	  public String newsUpdate(NewsVO newsvo, Model model, HttpServletRequest request) {
	   
		newsservice.newsUpdate(newsvo);

	    return "redirect:/admin/news";
	  }
	
	
	
	
	@RequestMapping(value = {"/newsModify"}, method = {RequestMethod.GET})
	  public String noticeModify(NewsVO newsvo, @RequestParam("idx") int idx, Model model) {
	   
		 newsvo = newsservice.newsModify(idx);
		 model.addAttribute("newsvo", newsvo);
	     return "/admin/newsModify";
	  }

	
	 @RequestMapping(value = {"/newsDelete"}, method = {RequestMethod.POST})
	  public String summerDelete(NewsVO newsvo, Model model, HttpSession session, @RequestParam("idx") int idx, HttpServletRequest request, @RequestParam(value = "num", defaultValue = "1") int num) {
	   
		 logger.info("admin page newsWrite delete page");
		 
		 String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		 String fileRoot = contextRoot+"resources/newsfileupload/"+idx+"/";
		 deleteFile(fileRoot);
		 
		 newsservice.newsDelete(idx);
		 return "redirect:/admin/news";
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

	
	
	
	
	
	@RequestMapping(value="/uploadNewsImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadNewsImageFile(NewsVO newsvo, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		
		logger.info("admin page file Upload");
		int idx = 0;
        if (newsservice.getImgCount() == 0) {
          idx = 1;
          System.out.println("idx : " + idx);
        } else {
          idx = newsservice.getLastIdx()+1;  // 마지막 행의 idx 값을 가져와서 1 증가 
          System.out.println("idx : " + idx);
        } 
        
        
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/newsfileupload/"+idx+"/";
		System.out.println("fileRoot : " +fileRoot);
		String originalFileName = multipartFile.getOriginalFilename();	
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	
		String savedFileName = UUID.randomUUID() + extension;	
		
		File targetFile = new File(fileRoot + savedFileName);	
		System.out.println("targetFile : " + targetFile);
		
		
		
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	
			
			
			

			//썸네일 만들기 
			String oPath = fileRoot + savedFileName; // 원본 이미지 파일 경로
			File oFile = new File(oPath);
			
			int index = oPath.lastIndexOf(".");
			String ext = oPath.substring(index + 1); // 파일 확장자
			
			
			String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
			File Folder = new File(thumbPath);
			
			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); //폴더 생성합니다.
				    System.out.println("create Folder");
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		         }else {
				System.out.println("aleady create Folder");
			}
			
			
			
			String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
			System.out.println("썸네일저장 경로 : " + tPath);
			File tFile = new File(tPath);
			
			double ratio = 4; // 이미지 축소 비율
			
			//썸네일 생성 시작
			BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
			int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
			int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이
			
			BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
			Graphics2D graphic = tImage.createGraphics();
			Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
			graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
			graphic.dispose(); // 리소스를 모두 해제

			ImageIO.write(tImage, ext, tFile);
			
			//썸네일 생성 종료
				
			jsonObject.addProperty("url", "/resources/newsfileupload/"+idx+"/thumb/"+"t-"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		System.out.println("a" + a);
		return a;
		
	}
	
	

	@RequestMapping(value="/uploadNewsImageFileUpdate", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadNewsImageFileUpdate(NewsVO newsvo,  @RequestParam("idx") int idx, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();

	
        System.out.println("수정 idx :"+idx);
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/newsfileupload/"+idx+"/";
		System.out.println("fileRoot : " +fileRoot);
		String originalFileName = multipartFile.getOriginalFilename();	
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	
		String savedFileName = UUID.randomUUID() + extension;	
		
		File targetFile = new File(fileRoot + savedFileName);	
		System.out.println("targetFile : " + targetFile);
		
		
		
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	
			
			
			

			//썸네일 만들기 
			String oPath = fileRoot + savedFileName; // 원본 이미지 파일 경로
			File oFile = new File(oPath);
			
			int index = oPath.lastIndexOf(".");
			String ext = oPath.substring(index + 1); // 파일 확장자
			
			
			String thumbPath =  oFile.getParent() + File.separator +"thumb"+File.separator ;
			File Folder = new File(thumbPath);
			
			if (!Folder.exists()) {
				try{
				    Folder.mkdir(); //폴더 생성합니다.
				    System.out.println("create Folder");
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		         }else {
				System.out.println("aleady create Folder");
			}
			
			
			
			String tPath = oFile.getParent() + File.separator +"thumb"+File.separator+"t-"+oFile.getName(); // 썸네일저장 경로
			System.out.println("썸네일저장 경로 : " + tPath);
			File tFile = new File(tPath);
			
			double ratio = 4; // 이미지 축소 비율
			
			//썸네일 생성 시작
			BufferedImage oImage = ImageIO.read(oFile); // 원본이미지
			int tWidth = (int) (oImage.getWidth() / ratio); // 생성할 썸네일이미지의 너비
			int tHeight = (int) (oImage.getHeight() / ratio); // 생성할 썸네일이미지의 높이
			
			BufferedImage tImage = new BufferedImage(tWidth, tHeight, BufferedImage.TYPE_3BYTE_BGR); // 썸네일이미지
			Graphics2D graphic = tImage.createGraphics();
			Image image = oImage.getScaledInstance(tWidth, tHeight, Image.SCALE_SMOOTH);
			graphic.drawImage(image, 0, 0, tWidth, tHeight, null);
			graphic.dispose(); // 리소스를 모두 해제

			ImageIO.write(tImage, ext, tFile);
			
			//썸네일 생성 종료
				
			jsonObject.addProperty("url", "/resources/newsfileupload/"+idx+"/thumb/"+"t-"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
			
			String thumbNailUrl = "/resources/newsfileupload/"+idx+"/thumb/"+"t-"+savedFileName;
			newsvo.setThumburl(thumbNailUrl);
			newsvo.setIdx(idx);
			newsservice.newsThumbUpdate(newsvo);
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		System.out.println("a" + a);
		return a;
		
	}
	
	
	@RequestMapping(value="/faq", method=RequestMethod.GET) 
	public String faq(FaqVO faqvo, Model model) {
		
		logger.info("admin page faq page");
		 
		 List<FaqVO> faqList = faqservice.listFaq();
		 
 
		 model.addAttribute("faqList", faqList);

		 logger.info("admin page faqList  page : "+faqList);
		 
		 return "/admin/faq";
	}
	
	
	@RequestMapping(value="/faqModify", method=RequestMethod.GET) 
	public String faq(FaqVO faqvo, @RequestParam("idx") int idx, Model model) {
		   
			 faqvo = faqservice.faqModify(idx);
			 model.addAttribute("faqvo", faqvo);
		     return "/admin/faqModify";
    }
	
	
	
	
	@RequestMapping(value="/room", method=RequestMethod.GET) 
	public String room( Model model, RoomVO roomvo,Criteria cri) {
		
		logger.info("admin page roomList page");
		 
		List<RoomVO> roomList = roomservice.getRoomList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(roomservice.listCountCriteria(cri));
		 
		 model.addAttribute("roomList", roomList);
		 model.addAttribute("pageMaker",pageMaker);
		 logger.info("admin page roomList list page : "+roomList);
		 return "/admin/room";
	}
	
	
	@RequestMapping(value="/roomWrite", method=RequestMethod.GET) 
	public String roomWrite( Model model) {
		
		logger.info("admin page roomWrite page");
		 

		logger.info("admin page roomWrite  page : ");
		 
		 return "/admin/roomWrite";
	}
	
	
	@RequestMapping(value="/roomModify", method=RequestMethod.GET) 
	public String roomWrite(RoomVO roomvo, @RequestParam("idx") int idx, Model model) {
		   
			roomvo = roomservice.roomModify(idx);
			 model.addAttribute("roomvo", roomvo);
		     return "/admin/roomModify";
	}
	
	
	
	@RequestMapping(value="/food", method=RequestMethod.GET) 
	public String food( Model model, FoodVO foodvo,Criteria cri) {
		
		logger.info("admin page foodList page");
		 
		List<FoodVO> foodList = foodservice.getFoodList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(foodservice.listCountCriteria(cri));
		 
		 model.addAttribute("foodList", foodList);
		 model.addAttribute("pageMaker",pageMaker);
		 logger.info("admin page foodList list page : "+foodList);
		 return "/admin/food";
	}
	
	
	@RequestMapping(value="/foodWrite", method=RequestMethod.GET) 
	public String foodWrite( Model model, BnfVO bnfvo) {
		
		logger.info("admin page foodWrite page");
		int idx = 1;
		bnfvo =  foodservice.getBnf(idx);
		model.addAttribute("bnfvo",bnfvo);
		 
		 return "/admin/foodWrite";
	}
	
	
	@RequestMapping(value="/foodModify", method=RequestMethod.GET) 
	public String foodModify(FoodVO foodvo, @RequestParam("idx") int idx, Model model) {
		   

			foodvo = foodservice.foodModify(idx);
			model.addAttribute("foodvo", foodvo);

		     return "/admin/foodModify";
	}
	

}

