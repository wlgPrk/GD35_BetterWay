package com.gdj35.betterway.web.main;

import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.zip.CheckedOutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gdj35.betterway.web.customer.board.Service.Iboard_Service;
import com.gdj35.betterway.web.main.Service.IMainService;

@Controller
public class main_Controller {
	@Autowired
	public IMainService iMainService;
	@Autowired
	public Iboard_Service iboard_Service;
	
	@RequestMapping(value="/BetterWay_main")
	public ModelAndView BetterWay_main(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		 List<HashMap<String, String>> SubwayList
         = iMainService.SubwayList(params);
		 List<HashMap<String, String>> list
	        = iMainService.getChList(params);
		 
		 List<HashMap<String, String>> suglist
			=iboard_Service.getSugList(params);
		
		//공지목록취득
		List<HashMap<String,String>> data
			=iboard_Service.getNoticeList();
		 
		mav.addObject("suglist",suglist);
		 mav.addObject("data",data);
		 mav.addObject("SubwayList",SubwayList);
		 mav.addObject("list",list);
		mav.setViewName("main/BetterWay_main");
	
		return mav;
	}
	@RequestMapping(value="/test")
	public ModelAndView test(ModelAndView mav) {
		
		mav.setViewName("main/test");
		
		return mav;
	}
	@RequestMapping(value="/BetterWay_charge")
	public ModelAndView BetterWay_charge(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		
		List<HashMap<String, String>> list
        = iMainService.getChList(params);
		
		mav.addObject("list",list);
		
		mav.setViewName("main/BetterWay_charge");
		
		return mav;
	}
	@RequestMapping(value="/BetterWay_time")
	public ModelAndView BetterWay_time(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		 List<HashMap<String, String>> SubwayList
         = iMainService.SubwayList(params);
		 
		 mav.addObject("SubwayList",SubwayList);
		 
		mav.setViewName("main/BetterWay_time");
	
		return mav;
	}
	
	
	
	}

	
	

