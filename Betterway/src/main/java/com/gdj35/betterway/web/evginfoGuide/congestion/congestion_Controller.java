package com.gdj35.betterway.web.evginfoGuide.congestion;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.betterway.web.main.Service.IMainService;
import com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Service.IEstaService;

@Controller
public class congestion_Controller {
	@Autowired 
	public IEstaService iEstaService;
	
	@RequestMapping(value="/BetterWay_congestion")
	public ModelAndView BetterWay_congestion(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		try {
			List<HashMap<String, String>> SubwayList
	         = iEstaService.StationList(params);
			 
			 mav.addObject("StationList",SubwayList);
			 
			 mav.setViewName("environment/BetterWay_congestion");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	
	  @RequestMapping(value="/congestions", method=RequestMethod.POST,
	  produces="text/json;charset=UTF-8")
	  
	  @ResponseBody public String congestions(
	  
	  @RequestParam HashMap<String, String> params) throws Throwable{
	  
	  ObjectMapper mapper = new ObjectMapper(); Map<String, Object> modelMap = new
	  HashMap<String, Object>(); 
	  try {
	  List<HashMap<String, String>> data = iEstaService.SubwayLine(params);
	  modelMap.put("data",data); } 
	  catch (Exception e) { 
		  e.printStackTrace(); 
		  }
	  return mapper.writeValueAsString(modelMap); }
	
}
