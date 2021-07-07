package com.gdj35.betterway.web.Admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
//import com.gdj35.betterway.util.Utils;
import com.gdj35.betterway.web.Admin.Service.IAdmin_Service;
import com.gdj35.betterway.web.evginfoGuide.cooling.Service.ICoolingService;
import com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Service.IEstaService;

@Controller
public class Admin_Controller {
	
	@Autowired
	public IAdmin_Service iAdmin_Service;
	@Autowired 
	public ICoolingService iCoolingService;
	
	
	@RequestMapping(value ="/BetterWay_loginAdmin")
	public ModelAndView BetterWay_loginAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_loginAdmin");
		
		return mav;
	}
	
	@RequestMapping(value ="/BetterWay_mainAdmin")
	public ModelAndView BetterWay_mainAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_mainAdmin");
		
		return mav;
	}
	
	

	@RequestMapping(value = "/BetterWay_loginAdmins",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody 
	public String BetterWay_logins(
			HttpSession session,
			@RequestParam HashMap<String, String> params) throws Throwable{
	
		ObjectMapper  mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		try {
			HashMap<String, String> data = iAdmin_Service.getAdmin(params);
			
			if(data !=null) { 
				session.setAttribute("sNO", data.get("ADMIN_NO"));
				session.setAttribute("sID", data.get("ADMIN_ID"));
				modelMap.put("resMsg", "success");
			}else {
				modelMap.put("resMsg", "faild");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		return mapper.writeValueAsString(modelMap);
	}
	
	
	@RequestMapping(value ="/BetterWay_happyAdmin")
	public ModelAndView BetterWay_happyAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_happyAdmin");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_happyAdmin_Detail")
	   public  ModelAndView BetterWay_happyAdmin_Detail(
			   @RequestParam HashMap<String, String> params,
			   ModelAndView mav)throws Throwable{
		   try {
			   HashMap<String, String> data = iAdmin_Service.getDetail(params);
			   
			   mav.addObject("data",data);
			   
			   mav.setViewName("admin/BetterWay_happyAdmin_Detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   return mav;
	   }
	
	 @RequestMapping(value="BetterWay_happyAdmin_Write")
	   public ModelAndView BetterWay_happyAdmin_Write(ModelAndView mav) {
		   
		   mav.setViewName("admin/BetterWay_happyAdmin_Write");
		   
		   return mav;
	   }
	
	 @RequestMapping(value = "/BetterWay_happyAdmin_Writes",
		   method = RequestMethod.POST,
		   produces = "text/json;charset=UTF-8")
	 @ResponseBody
	 public String  BetterWay_happyAdmin_Writes(
			 @RequestParam HashMap<String, String> params) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();

		 try {
			 int cnt = iAdmin_Service.addT(params);

			 if(cnt > 0) {
				 modelMap.put("msg","success");
			 }else {
				 modelMap.put("msg","failed");
			 }
		 }catch(Throwable e){
			 e.printStackTrace();
			 modelMap.put("msg", "error");
		 }
		 return mapper.writeValueAsString(modelMap);
	 }
	 
	@RequestMapping(value ="/BetterWay_cycleAdmin")
	public ModelAndView BetterWay_cycleAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_cycleAdmin");
		
		return mav;
	}
	@RequestMapping(value ="/BetterWay_wheelchairAdmin")
	public ModelAndView BetterWay_wheelchairAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_wheelchairAdmin");
		
		return mav;
	}
	
	@RequestMapping(value ="/BetterWay_suggestListAdmin")
	public ModelAndView BetterWay_suggestListAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_suggestListAdmin");
		
		return mav;
	}
	
	@RequestMapping(value ="/BetterWay_suggestWriteAdmin")
	public ModelAndView BetterWay_suggestWriteAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_suggestWriteAdmin");
		
		return mav;
	}
	
	@RequestMapping(value ="/BetterWay_suggestModifyAdmin")
	public ModelAndView BetterWay_suggestContentAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_suggestModifyAdmin");
		
		return mav;
	}
	@RequestMapping(value ="/BetterWay_infoAdmin")
	public ModelAndView BetterWay_infoAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_infoAdmin");
		
		return mav;
	}
	
	
	@RequestMapping(value="/infoAdmin_List",
	   		   method = RequestMethod.POST,
	   		   produces = "text/json;charset=UTF-8")
	 @ResponseBody //ajax때 꼭 필요
	 public String infoAdmin_List(
		@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		//목록 취득
			List<HashMap<String,String>> list
			= iCoolingService.coolingList(params);
			
			modelMap.put("list", list);
			
		return mapper.writeValueAsString(modelMap);
	 }
	
}
