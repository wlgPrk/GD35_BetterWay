package com.gdj35.betterway.web.subwayNews;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.parser.ParseException;
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
import com.gdj35.betterway.web.subwayNews.Service.ApiNewsService;

@Controller
public class subwayNews_Controller {
	
	
	@Autowired
	ApiNewsService newsService;
	
	@Autowired
	IPagingService iPagingService;
	
	//지하철뉴스
	@RequestMapping(value="/BetterWay_subwayNews")
	public ModelAndView subwayNews(ModelAndView mav,@RequestParam HashMap<String, String> params) {
		try {
			int page =1;
			
			if(params.get("page") != null) {
				page = Integer.parseInt(params.get("page"));
			}
			
			mav.addObject("page",page);
		
	
		
		mav.setViewName("customer/BetterWay_subwayNews");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}//subwaynews end
	
	
	//지하철뉴스 목록
	@RequestMapping(value="/BetterWay_subWayNewss",
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
		
		//총게시글수
		int cnt = 300;
		
		//현재페이지 , 최대갯수
		PagingBean pb = iPagingService.getPagingBean(page, cnt) ;
		
		
		//게시글 시작번호 , 종료 번호 할당
		String start= Integer.toString(pb.getStartCount());
		String pStart =Integer.toString(pb.getStartPcount());
		String pEnd =Integer.toString(pb.getEndPcount());
		String pMax =Integer.toString(pb.getMaxPcount());
		
		//목록취득
		List<HashMap<String, String>> list=newsService.newsApi(start);
	
		
		
		modelMap.put("list",list);
		modelMap.put("pStart", pStart);
		modelMap.put("pEnd", pEnd);
		modelMap.put("pMax",pMax);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
	


}
