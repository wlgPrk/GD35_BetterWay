package com.gdj35.betterway.web.subwayNews;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class subwayNews_Controller {
	
	//지하철뉴스
	@RequestMapping(value="/BetterWay_subwayNews")
	public ModelAndView subwayNews(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_subwayNews");
		
		return mav;
	}//subwaynews end

}
