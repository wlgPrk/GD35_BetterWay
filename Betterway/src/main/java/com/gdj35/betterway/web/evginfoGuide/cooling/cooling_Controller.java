package com.gdj35.betterway.web.evginfoGuide.cooling;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class cooling_Controller {
	@RequestMapping(value="/BetterWay_cooling")
	public ModelAndView BetterWay_cooling(ModelAndView mav) {
		mav.setViewName("BetterWay_cooling");
		return mav;
	}
}
