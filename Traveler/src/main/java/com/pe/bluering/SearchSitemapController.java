package com.pe.bluering;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SearchSitemapController {

	@RequestMapping(value="/sitemap.xml", method=RequestMethod.GET) 
	public String sitemap() {
		return "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n"
				+ "<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/about</loc>\r\n"
				+ "</url>\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/room</loc>\r\n"
				+ "</url>\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/food</loc>\r\n"
				+ "</url>\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/activity</loc>\r\n"
				+ "</url>\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/etc</loc>\r\n"
				+ "</url>\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/news</loc>\r\n"
				+ "</url>\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/qna</loc>\r\n"
				+ "</url>\r\n"
				+ "<url>\r\n"
				+ "<loc>http://jejuinhotel.co.kr/faq</loc>\r\n"
				+ "</url>\r\n"
				+ "</urlset>";
	}
}
