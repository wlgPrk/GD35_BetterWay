package com.gdj35.betterway.web.customer.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class board_Controller {

	//건의게시판목록
	@RequestMapping(value="/BetterWay_suggestList")
	public ModelAndView suggestList(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_suggestList");
		
		return mav;
	}//suggestListe end
	
	
	//건의게시판내용
	@RequestMapping(value="/BetterWay_suggestContent")
	public ModelAndView suggestContent(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_suggestContent");
		
		return mav;
	}//suggestContent end
	
	
	//건의게시판쓰기
	@RequestMapping(value="/BetterWay_suggestWrite")
	public ModelAndView suggestWrite(ModelAndView mav) {
		
		mav.setViewName("/BetterWay_suggestWrite");
		
		return mav;
	}//suggestWrite end
	
	
	
}
