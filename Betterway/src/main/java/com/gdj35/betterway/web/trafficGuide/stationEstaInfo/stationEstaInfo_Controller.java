package com.gdj35.betterway.web.trafficGuide.stationEstaInfo;

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
public class stationEstaInfo_Controller {
	
	@Autowired 
	public IEstaService iEstaService;
	@Autowired
	public IMainService iMainService;
	
	@RequestMapping(value="/BetterWay_nursingRoom")
	public ModelAndView BetterWay_nursingRoom(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_nursingRoom");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_nursingRoom2")
	public ModelAndView BetterWay_nursingRoom2(ModelAndView mav) {
		try {
			mav.setViewName("traffic/BetterWay_nursingRoom2");
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return mav;
	}
	
	@RequestMapping(value="/nursingRoom_List",
	   		   method = RequestMethod.POST,
	   		   produces = "text/json;charset=UTF-8")
	 @ResponseBody //ajax때 꼭 필요
	 public String nursingRoom_List(
		@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			//목록 취득
			List<HashMap<String,String>> list
			= iEstaService.nursingRoomList(params);
			
			modelMap.put("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mapper.writeValueAsString(modelMap);
	 }
	
	@RequestMapping(value="/BetterWay_cycle")
	public ModelAndView BetterWay_cycle(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_cycle");
		
		return mav;
	}
	
	@RequestMapping(value="/cycle_List",
	   		   method = RequestMethod.POST,
	   		   produces = "text/json;charset=UTF-8")
	 @ResponseBody //ajax때 꼭 필요
	 public String cycle_List(
		@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		//목록 취득
			List<HashMap<String,String>> list
			= iEstaService.cycleList(params);
			
			modelMap.put("list", list);
			
		return mapper.writeValueAsString(modelMap);
	 }
	
	@RequestMapping(value="/BetterWay_happy")
	public ModelAndView BetterWay_happy( 
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_happy");
		
		return mav;
	}

	@RequestMapping(value="/happy_List",
	   		   method = RequestMethod.POST,
	   		   produces = "text/json;charset=UTF-8")
	 @ResponseBody //ajax때 꼭 필요
	 public String happy_List(
		@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		//목록 취득
			List<HashMap<String,String>> list
			= iEstaService.happyList(params);
			
			modelMap.put("list", list);
			
		return mapper.writeValueAsString(modelMap);
	 }
	
	
	@RequestMapping(value="/BetterWay_wheelchair")
	public ModelAndView BetterWay_wheelchair(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_wheelchair");
		
		return mav;
	}
	
	@RequestMapping(value="/wheelchair_List",
	   		   method = RequestMethod.POST,
	   		   produces = "text/json;charset=UTF-8")
	 @ResponseBody //ajax때 꼭 필요
	 public String wheelchair_List(
		@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		//목록 취득
			List<HashMap<String,String>> list
			= iEstaService.wheelchairList(params);
			
			modelMap.put("list", list);
			
		return mapper.writeValueAsString(modelMap);
	 }
	
	@RequestMapping(value="/BetterWay_menu_real")
	public ModelAndView BetterWay_menu_real(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_menu_real");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_esta_main")
	public ModelAndView BetterWay_esta_main(
			
			ModelAndView mav) throws Throwable {
		
		mav.setViewName("traffic/BetterWay_esta_main");
		
		return mav;
	}
	
	@RequestMapping(value = "/esta_mains", 
			method = RequestMethod.POST, 
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String esta_mains(
			@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> modelMap = new HashMap<String, Object>();
		
		List<HashMap<String, String>> list
		= iEstaService.EstaList(params);

		modelMap.put("list", list);
		 return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value="/BetterWay_esta_out")
	public ModelAndView BetterWay_esta_out(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		 List<HashMap<String, String>> SubwayList
         = iMainService.SubwayList(params);
		 
		 mav.addObject("SubwayList",SubwayList);
		 
		mav.setViewName("traffic/BetterWay_esta_out");
	
		return mav;
	}
	
	
	@RequestMapping(value="/BetterWay_toilet")
	public ModelAndView BetterWay_toilet(ModelAndView mav) {
		
		mav.setViewName("traffic/BetterWay_toilet");
		
		return mav;
	}
	
	@RequestMapping(value = "/toilet", 
			method = RequestMethod.POST, 
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String toilet(
			@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> modelMap = new HashMap<String, Object>();
		try {
			List<HashMap<String, String>> list
			= iEstaService.getToilet(params);
			
			modelMap.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value="/BetterWay_congestion")
	public ModelAndView BetterWay_congestion(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		 List<HashMap<String, String>> SubwayList
         = iMainService.SubwayList(params);
		 
		 mav.addObject("SubwayList",SubwayList);
		 
		 mav.setViewName("traffic/BetterWay_congestion");
	
		return mav;
	}
	
}
