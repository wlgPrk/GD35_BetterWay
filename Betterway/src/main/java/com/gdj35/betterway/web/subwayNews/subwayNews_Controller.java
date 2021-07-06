package com.gdj35.betterway.web.subwayNews;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class subwayNews_Controller {
	
	
	@Autowired
	ApiNewsService news;
	
	//지하철뉴스
	@RequestMapping(value="/BetterWay_subwayNews")
	public ModelAndView subwayNews(ModelAndView mav) {
		
		mav.addObject("news",news.newsApi());
		
		mav.setViewName("customer/BetterWay_subwayNews");
		
		return mav;
	}//subwaynews end
	
	

	


}
