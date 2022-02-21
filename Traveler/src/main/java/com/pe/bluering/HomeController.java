package com.pe.bluering;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		
		return "about";
	}
	
	@RequestMapping(value = "/room", method = RequestMethod.GET)
	public String room() {
		
		return "room";
	}
	
	@RequestMapping(value = "/food", method = RequestMethod.GET)
	public String food() {
		
		return "food";
	}
	
	@RequestMapping(value = "/activity", method = RequestMethod.GET)
	public String activity() {
		
		return "activity";
	}
	
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String shop() {
		
		return "shop";
	}
	
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news() {
		
		return "news";
	}
	
	@RequestMapping(value = "/newsDetail", method = RequestMethod.GET)
	public String newsDetail() {
		
		return "newsDetail";
	}
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq() {
		
		return "faq";
	}
	
	
	
	
	
}
