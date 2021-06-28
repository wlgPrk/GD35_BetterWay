package com.gdj35.betterway.web.customer.lost;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class lost_Contoroller {
	
	//유실물조회
	@RequestMapping(value="/lostAndFound")
	public ModelAndView lostAndFound(ModelAndView mav) {
		
		mav.setViewName("/lostAndFound");
		
		return mav;
	}//lostAndFound end

}
