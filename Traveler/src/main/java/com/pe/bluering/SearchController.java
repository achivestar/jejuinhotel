package com.pe.bluering;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SearchController {

	@RequestMapping(value="/robots.txt", method=RequestMethod.GET) 
	public String robots() {
		return "User-agent: Yeti\nAllow:/\n";
	}
}
