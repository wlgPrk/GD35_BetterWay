package com.gdj35.betterway.web.evginfoGuide.airInfo;

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
import com.gdj35.betterway.web.evginfoGuide.cooling.Service.ICoolingService;

@Controller
public class envginfoGuide_Controller {
	  @Autowired
	   public IEnvService iEnvService;
	@RequestMapping(value="/BetterWay_envinfoGuide")
	public ModelAndView BetterWay_envinfoGuide(ModelAndView mav) {
		mav.setViewName("environment/BetterWay_envinfoGuide");
		return mav;
	}
	@RequestMapping(value="/BetterWay_envinfoGuide2")
	public ModelAndView BetterWay_envinfoGuide2(ModelAndView mav) {
		mav.setViewName("environment/BetterWay_envinfoGuide2");
		return mav;
	}

	
	@RequestMapping(value="/envinfoGuide",
			method=RequestMethod.POST, produces="text/json;charset=UTF-8")
	@ResponseBody
	public String envinfoGuide(
			@RequestParam HashMap<String, String> params) throws Throwable{
		
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			try {
			
			List<HashMap<String, String>> data = iEnvService.getStation(params);
			modelMap.put("data",data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
}
