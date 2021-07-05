package com.gdj35.betterway.web.trafficGuide.stationEstaInfo;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Service.IEstaService;

@Controller
public class stationEstaInfo_Controller {
	
	@Autowired 
	public IEstaService iEstaService;
	
	@RequestMapping(value="/BetterWay_nursingRoom")
	public ModelAndView BetterWay_baby(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_nursingRoom");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_cycle")
	public ModelAndView BetterWay_cycle(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_cycle");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_happy")
	public ModelAndView BetterWay_happy(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_happy");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_wheelchair")
	public ModelAndView BetterWay_wheelchair(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_wheelchair");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_menu_real")
	public ModelAndView BetterWay_menu_real(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_menu_real");
		
		return mav;
	}
	
	
	
	@RequestMapping(value="/BetterWay_esta_main")
	public ModelAndView BetterWay_esta_main(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		List<HashMap<String, String>> list
		= iEstaService.EstaList(params);
		
		mav.addObject("list",list);
		
		mav.setViewName("traffic/BetterWay_esta_main");
		
		return mav;
	}
	
	
	@RequestMapping(value="/BetterWay_esta_out")
	public ModelAndView BetterWay_esta_out(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_esta_out");
		
		return mav;
	}
	@RequestMapping(value="/BetterWay_toilet")
	public ModelAndView BetterWay_toilet(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_toilet");
		
		return mav;
	}
	
	
}
