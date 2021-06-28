package com.gdj35.betterway.web.trafficGuide.stationEstaInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class stationEstaInfo_Controller {
	
	@RequestMapping(value="/BetterWay_baby")
	public ModelAndView BetterWay_baby(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_baby");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_cycle")
	public ModelAndView BetterWay_cycle(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_cycle");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_happy")
	public ModelAndView BetterWay_happy(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_happy");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_wheelchair")
	public ModelAndView BetterWay_wheelchair(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_wheelchair");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_menu_real")
	public ModelAndView BetterWay_menu_real(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_menu_real");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_esta_main")
	public ModelAndView BetterWay_esta_main(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_esta_main");
		
		return mav;
	}
	
}
