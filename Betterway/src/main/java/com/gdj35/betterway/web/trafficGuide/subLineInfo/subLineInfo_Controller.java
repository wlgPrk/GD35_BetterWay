package com.gdj35.betterway.web.trafficGuide.subLineInfo;

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
import com.gdj35.betterway.web.evginfoGuide.airInfo.Service.IEnvService;
import com.gdj35.betterway.web.trafficGuide.subLineInfo.Service.ISubLineService;
import com.gdj35.betterway.web.main.Service.IMainService;;

@Controller
public class subLineInfo_Controller {
	  @Autowired
	   public ISubLineService iSubLineService;
	  
	  @Autowired
	   public IMainService iMainService;
	  
	@RequestMapping(value="/BetterWay_subLineSearch")
	public ModelAndView BetterWay_subLineSearch(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav)throws Throwable {
		 List<HashMap<String, String>> SubwayList
         = iSubLineService.SubwayList(params);
		 mav.addObject("SubwayList",SubwayList);
		mav.setViewName("traffic/BetterWay_subLineSearch");
		return mav;
	}
	@RequestMapping(value="/BetterWay_subLineBusstation")
	public ModelAndView BetterWay_subLineBusstation(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		 List<HashMap<String, String>> SubwayList
         = iSubLineService.SubwayList(params);
		 mav.addObject("SubwayList",SubwayList);
		mav.setViewName("traffic/BetterWay_subLineBusstation");
		return mav;
	}
	@RequestMapping(value="/testtest")
	public ModelAndView testtest(ModelAndView mav) {
		mav.setViewName("traffic/testtest");
		return mav;
	}

	/*
	 * @RequestMapping(value="/BetterWay_subLineBusstation") public ModelAndView
	 * BetterWay_subLineBusstation(
	 * 
	 * @RequestParam HashMap<String, String> params, ModelAndView mav)throws
	 * Throwable { List<HashMap<String, String>> SubwayList =
	 * iSubLineService.getsIdsName(params);
	 * 
	 * mav.addObject("SubwayList",SubwayList);
	 * 
	 * mav.setViewName("traffic/BetterWay_subLineBusstation"); return mav;
	 * 
	 * }
	 */
	@RequestMapping(value="/BetterWay_subLineRealtime2")
	public ModelAndView BetterWay_subLineRealtime2(
		@RequestParam HashMap<String, String> params,
		ModelAndView mav)throws Throwable {
	 try {
		 List<HashMap<String, String>> SubwayList
	     = iSubLineService.SubwayList(params);
		 mav.addObject("SubwayList",SubwayList);
		 mav.setViewName("traffic/BetterWay_subLineRealtime2");
	} catch (Exception e) {
		e.printStackTrace();
	}
		return mav;
	}
	
	@RequestMapping(value="/getLatLngSubWay",
			method=RequestMethod.POST, produces="text/json;charset=UTF-8")
	@ResponseBody
	public String getLatLngSubWay(
			@RequestParam HashMap<String, String> params) throws Throwable{
		
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			try {
			
			List<HashMap<String, String>> data = iSubLineService.getLatLngSubWay(params);
			modelMap.put("data",data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}

	//역id,역이름 가져오기
	@RequestMapping(value="/getsIdsName",
			method=RequestMethod.POST, produces="text/json;charset=UTF-8")
	@ResponseBody
	public String getsIdsName(
			@RequestParam HashMap<String, String> params) throws Throwable{
		
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			try {
			
			List<HashMap<String, String>> data = iSubLineService.getsIdsName(params);
			modelMap.put("data",data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	//출발역 좌표 가져오기
	@RequestMapping(value="/getLatLngD",
			method=RequestMethod.POST, produces="text/json;charset=UTF-8")
	@ResponseBody
	public String getLatLngD(
			@RequestParam HashMap<String, String> params) throws Throwable{
		
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			try {
			
			List<HashMap<String, String>> data = iSubLineService.getLatLngD(params);
			modelMap.put("data",data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	//도착역 좌표 가져오기
	@RequestMapping(value="/getLatLngA",
			method=RequestMethod.POST, produces="text/json;charset=UTF-8")
	@ResponseBody
	public String getLatLngA(
			@RequestParam HashMap<String, String> params) throws Throwable{
		
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			try {
			
			List<HashMap<String, String>> data = iSubLineService.getLatLngA(params);
			modelMap.put("data",data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
}
