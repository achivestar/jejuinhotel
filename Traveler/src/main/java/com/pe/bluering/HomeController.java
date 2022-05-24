package com.pe.bluering;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pe.bluering.domain.BnfVO;
import com.pe.bluering.domain.Criteria;
import com.pe.bluering.domain.EtcVO;
import com.pe.bluering.domain.FaqVO;
import com.pe.bluering.domain.FoodMenuVO;
import com.pe.bluering.domain.FoodVO;
import com.pe.bluering.domain.NewsVO;
import com.pe.bluering.domain.PageMaker;
import com.pe.bluering.domain.QnaReppleVO;
import com.pe.bluering.domain.QnaVO;
import com.pe.bluering.domain.RoomVO;
import com.pe.bluering.service.EtcService;
import com.pe.bluering.service.FaqService;
import com.pe.bluering.service.FoodMenuService;
import com.pe.bluering.service.FoodService;
import com.pe.bluering.service.NewsService;
import com.pe.bluering.service.QnaService;
import com.pe.bluering.service.RoomService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	private NewsService newsservice;
	
	@Autowired
	private FaqService faqservice;
	
	@Autowired
	private RoomService roomservice;
	
	@Autowired
	private EtcService etcservice;
	
	@Autowired
	private FoodService foodservice;
	
	@Autowired
	private FoodMenuService foodmenuservice;
	
	@Autowired
	private QnaService qnaservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, NewsVO newsvo, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		HttpSession session = request.getSession();
		String name = "user";
		session.setAttribute("sessionId", name);
		
		
		 List<NewsVO> newsList = newsservice.getNewsListIndex();
		 
		 model.addAttribute("newsList", newsList);
		 logger.info("admin page newsWrite list page : "+newsList);
		 model.addAttribute("url","index");
		return "index";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {
		model.addAttribute("url","about");
		return "about";
	}
	
	@RequestMapping(value="/room", method=RequestMethod.GET) 
	public String room( Model model, RoomVO roomvo,Criteria cri) {
		
		logger.info("page roomList page");
		 
		List<RoomVO> roomList = roomservice.getRoomList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(roomservice.listCountCriteria(cri));
		 
		 model.addAttribute("roomList", roomList);
		 model.addAttribute("pageMaker",pageMaker);
		 model.addAttribute("url","room");
		 logger.info("page roomList list page : "+roomList);
		 return "room";
	}
	
	@RequestMapping(value = "/food", method = RequestMethod.GET)
	public String food(FoodVO foodvo, BnfVO bnfvo, FoodMenuVO foodmenuvo, Model model, Criteria cri) {
		
		logger.info("client page food page");
		 
		 List<FoodVO> foodList = foodservice.getFoodList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(foodservice.listCountCriteria(cri));
		 
		 model.addAttribute("foodList", foodList);
		 model.addAttribute("pageMaker",pageMaker);
		 
		 int idx = 1;
		 bnfvo =  foodservice.getBnf(idx);
		 model.addAttribute("bnfvo",bnfvo);
		 
		 
		 List<FoodMenuVO> fmenu = foodmenuservice.getFoodMenuList("food");
		 List<FoodMenuVO> bmenu = foodmenuservice.getBeverageMenuList("beverage");
		 
		 
		 model.addAttribute("fmenu", fmenu);
		 model.addAttribute("bmenu", bmenu);
		 model.addAttribute("url","food");
		 logger.info("client page food bnfvo page : "+bnfvo);
		 logger.info("client page food list page : "+foodList);
		 
		 return "food";
	}
	
	@RequestMapping(value = "/activity", method = RequestMethod.GET)
	public String activity(Model model) {
		 model.addAttribute("url","activity");
		return "activity";
	}
	
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String shop(Model model) {
		 model.addAttribute("url","shop");
		return "shop";
	}
	
	@RequestMapping(value = "/etc", method = RequestMethod.GET)
	public String etc(Model model,EtcVO etcvo,Criteria cri) {
		logger.info("page roomList page");
		 
		List<EtcVO> etcList = etcservice.getEtcList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(etcservice.listCountCriteria(cri));
		 
		 model.addAttribute("etcList", etcList);
		 model.addAttribute("pageMaker",pageMaker);
		 model.addAttribute("url","etc");
		 logger.info("page roomList list page : "+etcList);
		 return "etc";
	}
	
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(NewsVO newsvo, Model model, Criteria cri) {
		
		logger.info("client page news page");
		 
		 List<NewsVO> newsList = newsservice.getNewsList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(newsservice.listCountCriteria(cri));
		 
		 model.addAttribute("newsList", newsList);
		 model.addAttribute("pageMaker",pageMaker);
		 model.addAttribute("url","news");
			
		 logger.info("admin page newsWrite list page : "+newsList);
		 
		 return "news";
	}
	
	@RequestMapping(value = "/newsDetail", method = RequestMethod.GET)
	public String newsDetail(NewsVO newsvo, @RequestParam("idx") int idx, Model model) {
		 newsvo = newsservice.newsModify(idx);
		 model.addAttribute("newsvo", newsvo);
		 
		 
		 
		 List<NewsVO> isPrev = newsservice.getPrev(idx);
		 List<NewsVO> isNext = newsservice.getNext(idx);
		
		 System.out.println("isPrev : " + isPrev);
		 System.out.println("isNext : " + isNext);
		
		 model.addAttribute("isPrev",isPrev);
		 model.addAttribute("isNext",isNext);
		 model.addAttribute("url","news");
		return "newsDetail";
	}
	
	
	@RequestMapping(value="/location", method=RequestMethod.GET) 
	public String location() {
		
		logger.info("location faq page");
		
		 return "location";
	}
	
	
	@RequestMapping(value="/faq", method=RequestMethod.GET) 
	public String faq(FaqVO faqvo, Model model) {
		
		logger.info("admin page faq page");
		 
		 List<FaqVO> faqList = faqservice.listFaq();
		 
		 model.addAttribute("faqList", faqList);

		 logger.info(" page faqList  page : "+faqList);
		 model.addAttribute("url","faq");
		 return "faq";
	}
	
	@RequestMapping(value="/qna", method=RequestMethod.GET) 
	public String qna(QnaVO qnavo, Model model, Criteria cri) {
		
		 logger.info("qna page");
		 
		 List<QnaVO> qnaList = qnaservice.getQnaList(cri);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 pageMaker.setTotalCount(qnaservice.listCountCriteria(cri));
		 
		 model.addAttribute("qnaList", qnaList);
		 model.addAttribute("pageMaker",pageMaker);
		 

		 logger.info("qnaList  page : "+qnaList);
		 model.addAttribute("url","qna");

 
		 return "qna";
	}
	
	@RequestMapping(value="/qnaRegist", method=RequestMethod.GET) 
	public String qnaRegist(Model model) {
		
		logger.info("qnaRegist page");
		 
		return "qnaRegist";
	}
	

	@RequestMapping(value="/qnaView", method=RequestMethod.POST) 
	public String qnaView(Model model,QnaVO qnavo, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		logger.info("qnaView page");
		logger.info("-----------------------------------------------");
		logger.info(qnavo.getName()+","+qnavo.getIdx()+","+qnavo.getPwd());
		int idx = qnaservice.isMember(qnavo);
		
    	if(idx>0) {
    		model.addAttribute("idx",qnavo.getIdx());
    		model.addAttribute("name",qnavo.getName());
    		model.addAttribute("pwd",qnavo.getPwd());
    		model.addAttribute("qnavo",qnavo);
    		model.addAttribute("anch","anch");
    		return "redirect:/myQnaList";
    	}else {
    		return "redirect:/isNo";
    	}
		
	}
	
	
	@RequestMapping(value="/isNo", method=RequestMethod.GET) 
	public String isNo(Model model,QnaVO qnavo, HttpServletRequest request, HttpServletResponse response) {
	
		return "isNo";
	}

	@RequestMapping(value="/myQnaList", method=RequestMethod.GET) 
	public String myQnaList(Model model, QnaVO qnavo, @RequestParam("idx") int idx,@RequestParam("name") String name,@RequestParam("pwd") String pwd, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("myQnaListPage============");
		logger.info(qnavo.getName()+","+qnavo.getIdx()+","+qnavo.getPwd());
		logger.info(idx+","+name+","+pwd);
		HttpSession session = request.getSession();
		String names = (String)session.getAttribute("sessionId");
		System.out.println("session get : " + names);
		if(names == null) {
			return "isNo";
		}else {
			qnavo = qnaservice.getQuestionList(qnavo);
			model.addAttribute("qnavo", qnavo);
			logger.info("getQuestionList : "+qnavo);
			List<QnaReppleVO> questionReppleList = qnaservice.getQuestionReppleList(idx);
			model.addAttribute("questionReppleList",questionReppleList);
			logger.info("questionReppleList : "+questionReppleList);		
			return "myQnaList";
		}
		
		
	}
	
}
