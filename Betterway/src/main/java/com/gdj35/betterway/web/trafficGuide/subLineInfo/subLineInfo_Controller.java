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

@Controller
public class subLineInfo_Controller {
	  @Autowired
	   public ISubLineService iSubLineService;
	@RequestMapping(value="/BetterWay_subLineSearch")
	public ModelAndView BetterWay_subLineSearch(ModelAndView mav) {
		mav.setViewName("traffic/BetterWay_subLineSearch");
		return mav;
	}
	@RequestMapping(value="/BetterWay_subLineBusstation")
	public ModelAndView BetterWay_subLineBusstation(ModelAndView mav) {
		mav.setViewName("traffic/BetterWay_subLineBusstation");
		return mav;
	}
	@RequestMapping(value="/BetterWay_subLineRealtime")
	public ModelAndView BetterWay_subLineRealtime(ModelAndView mav) {
		mav.setViewName("traffic/BetterWay_subLineRealtime");
		return mav;
	}
	@RequestMapping(value="/BetterWay_subLineRealtime2")
	public ModelAndView BetterWay_subLineRealtime2(ModelAndView mav) {
		mav.setViewName("traffic/BetterWay_subLineRealtime2");
		return mav;
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
}
