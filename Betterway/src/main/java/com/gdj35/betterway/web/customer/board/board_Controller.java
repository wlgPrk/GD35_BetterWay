package com.gdj35.betterway.web.customer.board;

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
import com.gdj35.betterway.common.bean.PagingBean;
import com.gdj35.betterway.common.service.IPagingService;
import com.gdj35.betterway.web.customer.board.Service.Iboard_Service;

@Controller
public class board_Controller {
@Autowired
public Iboard_Service iboard_Service;

@Autowired
public IPagingService iPagingService;
	
	
	//건의게시판목록
	@RequestMapping(value="/BetterWay_suggestList")
	public ModelAndView BetterWay_suggestList(ModelAndView mav,
			HashMap<String, String> params) {
		
		int page =1;
		
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		mav.addObject("page",page);
		
		mav.setViewName("customer/BetterWay_suggestList");
		
		return mav;
	}//suggestListe end
	
	//건의게시판목록
	@RequestMapping(value="/BetterWay_suggestLists",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestLists(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		try {
			
	
		//현재페이지
		int page = Integer.parseInt(params.get("page"));
		System.out.println(page);
		
		//총게시글수
		int cnt = iboard_Service.getSugCnt(params);
		
		//현재페이지 , 최대갯수
		PagingBean pb = iPagingService.getPagingBean(page, cnt) ;
		
		
		//게시글 시작번호 , 종료 번호 할당
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		//목록취득
		List<HashMap<String, String>> list
			=iboard_Service.getSugList(params);
		
		modelMap.put("list",list);
		modelMap.put("pb", pb);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	
	
	
	
	
	
	
	
	//건의게시판내용
	@RequestMapping(value="/BetterWay_suggestContent")
	public ModelAndView suggestContent(ModelAndView mav) {
		
		mav.setViewName("customer/BetterWay_suggestContent");
		
		return mav;
	}//suggestContent end
	
	
	//건의게시판쓰기
	@RequestMapping(value="/BetterWay_suggestWrite")
	public ModelAndView suggestWrite(ModelAndView mav) {
		
		mav.setViewName("customer/BetterWay_suggestWrite");
		
		return mav;
	}//suggestWrite end
	
	//건의게시판쓰기2
	@RequestMapping(value="/BetterWay_suggestWrites",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestWrites(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper =new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		
		
		try {
			int cnt =  iboard_Service.addSug(params);
			
			if(cnt  >0) {
				modelMap.put("msg", "success");
			}else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		
		return mapper.writeValueAsString(modelMap);
	}

	
	
	
}
