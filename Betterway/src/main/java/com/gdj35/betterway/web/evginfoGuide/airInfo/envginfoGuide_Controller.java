package com.gdj35.betterway.web.evginfoGuide.airInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class envginfoGuide_Controller {
	@RequestMapping(value="/BetterWay_envinfoGuide")
	public ModelAndView BetterWay_envinfoGuide(ModelAndView mav) {
		mav.setViewName("BetterWay_envinfoGuide");
		return mav;
	}
	@RequestMapping(value="/BetterWay_envinfoGuide2")
	public ModelAndView BetterWay_envinfoGuide2(ModelAndView mav) {
		mav.setViewName("BetterWay_envinfoGuide2");
		return mav;
	}
}
