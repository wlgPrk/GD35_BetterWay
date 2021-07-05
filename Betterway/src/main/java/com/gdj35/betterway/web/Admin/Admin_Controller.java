package com.gdj35.betterway.web.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Admin_Controller {
	@RequestMapping(value ="/BetterWay_login")
	public ModelAndView BetterWay_login(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_login");
		
		return mav;
	}
	@RequestMapping(value ="/BetterWay_happyAdmin")
	public ModelAndView BetterWay_happyAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_happyAdmin");
		
		return mav;
	}
	@RequestMapping(value ="/BetterWay_cycleAdmin")
	public ModelAndView BetterWay_cycleAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_cycleAdmin");
		
		return mav;
	}
	@RequestMapping(value ="/BetterWay_wheelchairAdmin")
	public ModelAndView BetterWay_wheelchairAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_wheelchairAdmin");
		
		return mav;
	}
	
	@RequestMapping(value ="/BetterWay_suggestListAdmin")
	public ModelAndView BetterWay_suggestListAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_suggestListAdmin");
		
		return mav;
	}
	
	@RequestMapping(value ="/BetterWay_suggestWriteAdmin")
	public ModelAndView BetterWay_suggestWriteAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_suggestWriteAdmin");
		
		return mav;
	}
	
	@RequestMapping(value ="/BetterWay_suggestModifyAdmin")
	public ModelAndView BetterWay_suggestContentAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_suggestModifyAdmin");
		
		return mav;
	}
}
