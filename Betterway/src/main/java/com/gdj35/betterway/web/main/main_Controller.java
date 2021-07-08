package com.gdj35.betterway.web.main;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
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
	@RequestMapping(value="/BetterWay_time2")
	public ModelAndView BetterWay_time2(ModelAndView mav) {
		
		mav.setViewName("main/BetterWay_time2");
		
		return mav;
	}
	
	
	}

	
	

