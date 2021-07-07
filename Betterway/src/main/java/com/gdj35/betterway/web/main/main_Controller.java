package com.gdj35.betterway.web.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class main_Controller {
	
	@RequestMapping(value="/BetterWay_main")
	public ModelAndView BetterWay_main(ModelAndView mav) {
		
		mav.setViewName("main/BetterWay_main");
		
		return mav;
	}
	@RequestMapping(value="/BetterWay_pop1")
	public ModelAndView BetterWay_pop1(ModelAndView mav) {
		
		mav.setViewName("main/BetterWay_pop1");
		
		return mav;
	}
	@RequestMapping(value="/BetterWay_time")
	public ModelAndView BetterWay_time(ModelAndView mav) {
		
		mav.setViewName("main/BetterWay_time");
		
		return mav;
	}
	
}
