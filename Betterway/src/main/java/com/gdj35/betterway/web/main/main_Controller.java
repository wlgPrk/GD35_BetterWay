package com.gdj35.betterway.web.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class main_Controller {
	
	@RequestMapping(value="/main")
	public ModelAndView main(ModelAndView mav) {
		
		mav.setViewName("/main");
		
		return mav;
	}
	@RequestMapping(value="/pop1")
	public ModelAndView pop1(ModelAndView mav) {
		
		mav.setViewName("/pop1");
		
		return mav;
	}

}
