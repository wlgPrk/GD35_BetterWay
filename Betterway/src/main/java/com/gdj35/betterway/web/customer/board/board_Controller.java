package com.gdj35.betterway.web.customer.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gdj35.betterway.web.customer.board.Service.Iboard_Service;

@Controller
public class board_Controller {
//@Autowired
//public Iboard_Service iboard_Service;
	
	
	//건의게시판목록
	@RequestMapping(value="/BetterWay_suggestList")
	public ModelAndView suggestList(ModelAndView mav) {
		
		mav.setViewName("customer/BetterWay_suggestList");
		
		return mav;
	}//suggestListe end
	
	
	
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
	
	
	
	

	
	
	
}
