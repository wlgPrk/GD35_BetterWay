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
	public ModelAndView BetterWay_suggestList(ModelAndView mav,@RequestParam HashMap<String, String> params) {
		try {
			int page =1;
			
			if(params.get("page") != null) {
				page = Integer.parseInt(params.get("page"));
			}
			
			mav.addObject("page",page);
			
			mav.setViewName("customer/BetterWay_suggestList");
		} catch (Exception e) {
			e.printStackTrace();
		}
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
	public ModelAndView suggestContent(ModelAndView mav ,
			@RequestParam HashMap<String, String> params)throws Throwable {
		HashMap<String, String> data;

		try {
			int inq = iboard_Service.upadteInq(params);
			
			if(inq  >0) {
				mav.addObject("msg", "success");
			}else {
				mav.addObject("msg", "failed");
			}
			data = iboard_Service.getSug(params);
			mav.addObject("data",data);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		mav.setViewName("customer/BetterWay_suggestContent");
		
		return mav;
	}//suggestContent end
	
	
	//건의게시판내용댓글
	@RequestMapping(value="/BetterWay_suggestContents",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestContents(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		try {
			
			
		int commCnt = iboard_Service.getCommCnt(params);
		//목록취득
		List<HashMap<String, String>> list
			=iboard_Service.getSugComm(params);
		modelMap.put("commCnt", commCnt);
		modelMap.put("list",list);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}//SuggestContents end
	
	
	
	
	
	//건의게시판쓰기
	@RequestMapping(value="/BetterWay_suggestWrite")
	public ModelAndView suggestWrite(ModelAndView mav) {
		
		mav.setViewName("customer/BetterWay_suggestWrite");
		
		return mav;
	}//suggestWrite end
	
	//건의게시판쓰기완료
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

	
	
	//게시물수정 비밀번호체크
	@RequestMapping(value="/BetterWay_suggestContentChecks",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestContentChecks(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		try {
			HashMap<String, String> data = iboard_Service.getPwCheck(params);
			if(data !=null) {
			modelMap.put("resMsg", "success");
			}else {
			modelMap.put("resMsg", "faild");}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("resMsg", "faild");
		}
		return mapper.writeValueAsString(modelMap);
	}//SuggestContents end
	
	//게시판수정화면
	@RequestMapping(value="/BetterWay_suggestModify",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestModify(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
	
		
		return mapper.writeValueAsString(modelMap);
	}//SuggestContents end
	
	
	//게시판수정완료
	@RequestMapping(value="/BetterWay_suggestModifys",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestModifys(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper =new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> data;
		try {
			int cnt =  iboard_Service.updateSug(params);
			data = iboard_Service.getSug(params);
			modelMap.put("data",data);
			
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
	
	
	//게시판수정완료
	@RequestMapping(value="/BetterWay_suggestModifyCel",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestModifyCel(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper =new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> data;
		try {
			data = iboard_Service.getSug(params);
			modelMap.put("data",data);
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}	
	
	
	//게시판삭제완료
	@RequestMapping(value="/BetterWay_conDels",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_conDels(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper =new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> data;
		try {
			int delSug = iboard_Service.deleteSug(params);
			int delSugComm = iboard_Service.deleteSugComm(params);
			int delSugReq= iboard_Service.deleteSugReq(params);
			if(delSug  >0) {
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
	
	
	//댓글등록
	@RequestMapping(value="/BetterWay_reviewWrites",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_reviewWrites(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper =new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> data;
		try {
			int comm = iboard_Service.insertComm(params);
			
			int commCnt = iboard_Service.getCommCnt(params);
			
			List<HashMap<String, String>> list
				=iboard_Service.getSugComm(params);
			modelMap.put("commCnt", commCnt);
			modelMap.put("list",list);
			
			if(comm >0) {
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
	
	
	
	
	//게시물수정 비밀번호체크
	@RequestMapping(value="/BetterWay_suggestCommChecks",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestCommChecks(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		try {
			HashMap<String, String> data = iboard_Service.getCommPwCheck(params);
			if(data !=null) {
			modelMap.put("resMsg", "success");
			modelMap.put("data", data);
			}else {
			modelMap.put("resMsg", "faild");}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("resMsg", "faild");
		}
		return mapper.writeValueAsString(modelMap);
	}//SuggestContents end
	
	
	
	
	
	
	//댓글수정완료
	@RequestMapping(value="/BetterWay_commModifys",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_commModifys(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper =new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> data;
		try {
			int comm = iboard_Service.updateComm(params);
			
			int commCnt = iboard_Service.getCommCnt(params);
			
			List<HashMap<String, String>> list
				=iboard_Service.getSugComm(params);
			modelMap.put("commCnt", commCnt);
			modelMap.put("list",list);
			
			if(comm >0) {
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
