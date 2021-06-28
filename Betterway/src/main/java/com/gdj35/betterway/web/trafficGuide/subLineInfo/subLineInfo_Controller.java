package com.gdj35.betterway.web.trafficGuide.subLineInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class subLineInfo_Controller {
	@RequestMapping(value="/BetterWay_subLineSearch")
	public ModelAndView BetterWay_subLineSearch(ModelAndView mav) {
		mav.setViewName("BetterWay_subLineSearch");
		return mav;
	}
	@RequestMapping(value="/BetterWay_subLineBusstation")
	public ModelAndView BetterWay_subLineBusstation(ModelAndView mav) {
		mav.setViewName("BetterWay_subLineBusstation");
		return mav;
	}
	@RequestMapping(value="/BetterWay_subLineRealtime")
	public ModelAndView BetterWay_subLineRealtime(ModelAndView mav) {
		mav.setViewName("BetterWay_subLineRealtime");
		return mav;
	}
	
}
