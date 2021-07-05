package com.gdj35.betterway.web.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Admin_Controller {
	@RequestMapping(value ="/BetterWay_login")
	public ModelAndView BetterWay_login(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_login");
		
		return mav;
	}
}
