package com.gdj35.betterway.web.evginfoGuide.cooling;

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
import com.gdj35.betterway.web.evginfoGuide.cooling.Service.ICoolingService;

@Controller
public class cooling_Controller {
	   @Autowired
	   public ICoolingService iCoolingService;
	   
	   @RequestMapping(value="/BetterWay_cooling")
		public ModelAndView BetterWay_cooling( 
				@RequestParam HashMap<String, String> params,
				ModelAndView mav) {
			
			mav.setViewName("environment/BetterWay_cooling");
			
			return mav;
		}
	   
	@RequestMapping(value="/cooling",
			method=RequestMethod.POST, produces="text/json;charset=UTF-8")
	@ResponseBody
	public String cooling(
			@RequestParam HashMap<String, String> params) throws Throwable{
		
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			try {
			
			List<HashMap<String, String>> data = iCoolingService.getCar(params);
			modelMap.put("data",data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}

}
