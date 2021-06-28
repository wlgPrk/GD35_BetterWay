package com.gdj35.betterway.web.trafficGuide.stationEstaInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class stationEstaInfo_Controller {
	
	@RequestMapping(value="/BetterWay_baby")
	public ModelAndView BetterWay_baby(ModelAndView mav) {
		
		mav.setViewName("BetterWay_baby");
		
		return mav;
	}
}
