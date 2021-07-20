package com.gdj35.betterway.web.Admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.betterway.common.bean.PagingBean;
import com.gdj35.betterway.common.service.IPagingService;
//import com.gdj35.betterway.util.Utils;
import com.gdj35.betterway.web.Admin.Service.IAdmin_Service;
import com.gdj35.betterway.web.customer.board.Service.Iboard_Service;
import com.gdj35.betterway.web.evginfoGuide.cooling.Service.ICoolingService;

@Controller
public class Admin_Controller {
	
	@Autowired
	public IAdmin_Service iAdmin_Service;
	@Autowired 
	public ICoolingService iCoolingService;

	@Autowired
	public IPagingService iPagingService;
	
	@Autowired
	public Iboard_Service iboard_Service;
	
	//관리자로그인
	@RequestMapping(value ="/BetterWay_loginAdmin")
	public ModelAndView BetterWay_loginAdmin(ModelAndView mav,HttpSession session) {
		if(session.getAttribute("sNO") != null) {//로그인된상태
			mav.setViewName("redirect:BetterWay_mainAdmin");
		}else{
			mav.setViewName("admin/BetterWay_loginAdmin");
		}   
	
		
		return mav;
	}
	//관리자 메인
	@RequestMapping(value ="/BetterWay_mainAdmin")
	public ModelAndView BetterWay_mainAdmin(ModelAndView mav,HttpSession session) {
		mav.setViewName("admin/BetterWay_mainAdmin");
		
		return mav;
	}
	
	
	//권한별 메뉴권한
	@RequestMapping(value = "/BetterWay_menuPerAdmin",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody 
	public String BetterWay_menuPerAdmin(
			HttpSession session) throws Throwable{
		ObjectMapper  mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		try {
			HashMap<String, String> params = new HashMap<String, String>();
			params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			List<HashMap<String, String>> data= iAdmin_Service.getPer(params);
			modelMap.put("per",data);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		return mapper.writeValueAsString(modelMap);
	}
	
	
	//관리자 로그인
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
				session.setAttribute("sPW", data.get("ADMIN_PW"));
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
	//로그아웃
	@RequestMapping(value="/BetterWay_LogoutAdmin")
	public ModelAndView testALogout(
			HttpSession session,
			ModelAndView mav) {
		session.invalidate();
		
		mav.setViewName("redirect:BetterWay_loginAdmin");
		
		return mav;
	}
	
	
	//행복지대
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
			   HashMap<String, String> data = iAdmin_Service.getHDetail(params);
			   
			   mav.addObject("data",data);
			   
			   mav.setViewName("admin/BetterWay_happyAdmin_Detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   return mav;
	   }
	
	 @RequestMapping(value="/BetterWay_happyAdmin_Write")
	   public ModelAndView BetterWay_happyAdmin_Write(ModelAndView mav) {
		   
		   mav.setViewName("admin/BetterWay_happyAdmin_Write");
		   
		   return mav;
	   }
	 
	 @RequestMapping(value = "/BetterWay_happyAdmin_Writes",
		   method = RequestMethod.POST,
		   produces = "text/json;charset=UTF-8")
	 @ResponseBody
	 public String  BetterWay_happyAdmin_Writes(
			 @RequestParam HashMap<String, String> params, HttpSession session) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();

		 try {
			 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			 int cnt = iAdmin_Service.addHT(params);
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
	 
	 @RequestMapping(value="/BetterWay_happyAdmin_Update")
	   public  ModelAndView BetterWay_happyAdmin_Update(
			   @RequestParam HashMap<String, String> params,
			   ModelAndView mav)throws  Throwable{//db에 붙일거라 throws필요
		   HashMap<String, String> data = iAdmin_Service.getHDetail(params);
		   
		   mav.addObject("data",data);
		   
		   mav.setViewName("admin/BetterWay_happyAdmin_Update");
		   
		   return mav;
	   }
	 
	 @RequestMapping(value = "/BetterWay_happyAdmin_Updates",
		 method = RequestMethod.POST,
		 produces = "text/json;charset=UTF-8")
	 @ResponseBody
	 public String BetterWay_happyAdmin_Updates(
			 @RequestParam HashMap<String, String>params,HttpSession session) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();

		 try {
			 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			 int cnt = iAdmin_Service.updateHT(params);
			 if(cnt > 0) {
				 modelMap.put("msg", "success");
			 }else {
				 modelMap.put("msg", "failed");
			 }
		 } catch (Exception e) {
			 e.printStackTrace();
			 modelMap.put("msg", "error");
		 }
		 return mapper.writeValueAsString(modelMap);
	 }
	 
	 @RequestMapping(value = "/BetterWay_happyAdmin_Deletes",
			 		 method = RequestMethod.POST,
			 		 produces = "text/json;charset=UTF-8")
	 @ResponseBody
	 public String BetterWay_happyAdmin_Deletes(
			 @RequestParam HashMap<String, String>params, HttpSession session) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		 try {
			 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			 int cnt = iAdmin_Service.deleteHT(params);
			 if(cnt > 0) {
				 modelMap.put("msg", "success");
			 }else {
				 modelMap.put("msg", "failed");
			 }
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		 return mapper.writeValueAsString(modelMap);
	 }//행복지대 끝
	 
	 //수유실시작
	 @RequestMapping(value="/BetterWay_nursingRoomAdmin")
	 public ModelAndView BetterWay_nursingRoomAdmin(ModelAndView mav) {
		 mav.setViewName("admin/BetterWay_nursingRoomAdmin");
		 
		 return mav;
	 }
	 
	 @RequestMapping(value="/BetterWay_nursingRoomAdmin_Detail")
	   public  ModelAndView BetterWay_nursingRoomAdmin_Detail(
			   @RequestParam HashMap<String, String> params,
			   ModelAndView mav)throws Throwable{
		   try {
			   HashMap<String, String> data = iAdmin_Service.getnursingRoomDetail(params);
			   
			   mav.addObject("data",data);
			   
			   mav.setViewName("admin/BetterWay_nursingRoomAdmin_Detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   return mav;
	   }
	 
	 @RequestMapping(value="/BetterWay_nursingRoomAdmin_Write")
	   public ModelAndView BetterWay_nursingRoomAdmin_Write(ModelAndView mav) {
		   
		   mav.setViewName("admin/BetterWay_nursingRoomAdmin_Write");
		   
		   return mav;
	   }
	
	 @RequestMapping(value = "/BetterWay_nursingRoomAdmin_Writes",
		   method = RequestMethod.POST,
		   produces = "text/json;charset=UTF-8")
	 @ResponseBody
	 public String  BetterWay_nursingRoomAdmin_Writes(
			 @RequestParam HashMap<String, String> params,HttpSession session) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();

		 try {
			 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			 int cnt = iAdmin_Service.addnursingRoomT(params);

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
	 
	 @RequestMapping(value = "/BetterWay_nursingRoomAdmin_Deletes",
	 		 method = RequestMethod.POST,
	 		 produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_nursingRoomAdmin_Deletes(
		@RequestParam HashMap<String, String>params, HttpSession session) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		try {
			params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			int cnt = iAdmin_Service.deletenursingRoomT(params);
			if(cnt > 0) {
				modelMap.put("msg", "success");
			}else {
				modelMap.put("msg", "failed");
				}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}
	 //수유실 끝
	 
	 //자전거보관함 시작
	@RequestMapping(value ="/BetterWay_cycleAdmin")
	public ModelAndView BetterWay_cycleAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_cycleAdmin");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_cycleAdmin_Detail")
	   public  ModelAndView BetterWay_cycleAdmin_Detail(
			   @RequestParam HashMap<String, String> params,
			   ModelAndView mav)throws Throwable{
		   try {
			   HashMap<String, String> data = iAdmin_Service.getCDetail(params);
			   
			   mav.addObject("data",data);
			   
			   mav.setViewName("admin/BetterWay_cycleAdmin_Detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   return mav;
	   }
	
	@RequestMapping(value="/BetterWay_cycleAdmin_Write")
	   public ModelAndView BetterWay_cycleAdmin_Write(ModelAndView mav) {
		   
		   mav.setViewName("admin/BetterWay_cycleAdmin_Write");
		   
		   return mav;
	   }
	
	@RequestMapping(value = "/BetterWay_cycleAdmin_Writes",
			   method = RequestMethod.POST,
			   produces = "text/json;charset=UTF-8")
		 @ResponseBody
		 public String  BetterWay_cycleAdmin_Writes(
				 @RequestParam HashMap<String, String> params, HttpSession session) throws Throwable{
			 ObjectMapper mapper = new ObjectMapper();
			 Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
				 int cnt = iAdmin_Service.addcycleT(params);
	
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
	
	@RequestMapping(value = "/BetterWay_cycleAdmin_Deletes",
	 		 method = RequestMethod.POST,
	 		 produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_cycleAdmin_Deletes(
		@RequestParam HashMap<String, String>params, HttpSession session) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		try {
			params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			int cnt = iAdmin_Service.deletecycleT(params);
			if(cnt > 0) {
				modelMap.put("msg", "success");
			}else {
				modelMap.put("msg", "failed");
				}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}//자전거보관함 끝
	
	//연단간격
	@RequestMapping(value ="/BetterWay_wheelchairAdmin")
	public ModelAndView BetterWay_wheelchairAdmin(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_wheelchairAdmin");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_wheelchairAdmin_Write")
	public ModelAndView BetterWay_wheelchairAdmin_Write(ModelAndView mav) {
		mav.setViewName("admin/BetterWay_wheelchairAdmin_Write");
		
		return mav;
	}
	
	@RequestMapping(value="/BetterWay_wheelchairAdmin_Detail")
	   public  ModelAndView BetterWay_wheelchairAdmin_Detail(
			   @RequestParam HashMap<String, String> params,
			   ModelAndView mav)throws Throwable{
		   try {
			   HashMap<String, String> data = iAdmin_Service.getwheelchairDetail(params);
			   
			   mav.addObject("data",data);
			   
			   mav.setViewName("admin/BetterWay_wheelchairAdmin_Detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   return mav;
	   }
	
	@RequestMapping(value = "/BetterWay_wheelchairAdmin_Writes",
			   method = RequestMethod.POST,
			   produces = "text/json;charset=UTF-8")
		 @ResponseBody
		 public String  BetterWay_wheelchairAdmin_Writes(
				 @RequestParam HashMap<String, String> params,HttpSession session) throws Throwable{
			 ObjectMapper mapper = new ObjectMapper();
			 Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
				 int cnt = iAdmin_Service.addwheelchairT(params);
	
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
	
	 @RequestMapping(value="/BetterWay_wheelchairAdmin_Update")
	   public  ModelAndView BetterWay_wheelchairAdmin_Update(
			   @RequestParam HashMap<String, String> params,
			   ModelAndView mav)throws  Throwable{//db에 붙일거라 throws필요
		   HashMap<String, String> data = iAdmin_Service.getwheelchairDetail(params);
		   
		   mav.addObject("data",data);
		   
		   mav.setViewName("admin/BetterWay_wheelchairAdmin_Update");
		   
		   return mav;
	   }
	 
	 @RequestMapping(value = "/BetterWay_wheelchairAdmin_Updates",
		 method = RequestMethod.POST,
		 produces = "text/json;charset=UTF-8")
	 @ResponseBody
	 public String BetterWay_wheelchairAdmin_Updates(
			 @RequestParam HashMap<String, String>params,HttpSession session) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();

		 try {
			 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			 int cnt = iAdmin_Service.updatewheelchairT(params);
			 if(cnt > 0) {
				 modelMap.put("msg", "success");
			 }else {
				 modelMap.put("msg", "failed");
			 }
		 } catch (Exception e) {
			 e.printStackTrace();
			 modelMap.put("msg", "error");
		 }
		 return mapper.writeValueAsString(modelMap);
	 }
	
	@RequestMapping(value = "/BetterWay_wheelchairAdmin_Deletes",
	 		 method = RequestMethod.POST,
	 		 produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_wheelchairAdmin_Deletes(
		@RequestParam HashMap<String, String>params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		try {
			int cnt = iAdmin_Service.deletewheelchairT(params);
			if(cnt > 0) {
				modelMap.put("msg", "success");
			}else {
				modelMap.put("msg", "failed");
				}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}
	//게시판상세보기
	@RequestMapping(value ="/BetterWay_suggestAdmin_Detail")
	public ModelAndView BetterWay_suggestAdmin_Detail(ModelAndView mav,
			@RequestParam HashMap<String, String> params) {
		try {
			HashMap<String, String> data = iboard_Service.getSug(params);
			mav.addObject("data",data);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		mav.setViewName("admin/BetterWay_suggestAdmin_Detail");
		
		return mav;
	}
	
	
	
	//게시판답변
	@RequestMapping(value ="/BetterWay_suggestAdmin_Result")
	public ModelAndView BetterWay_suggestAdmin_Result(ModelAndView mav, @RequestParam HashMap<String, String> params) {
		
		try {
			HashMap<String, String> data = iboard_Service.getSug(params);
			mav.addObject("data",data);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		mav.setViewName("admin/BetterWay_suggestAdmin_Result");
		return mav;
	}
	//게시판 답변완료
	 @RequestMapping(value = "/BetterWay_suggestAdmin_Results",
			   method = RequestMethod.POST,
			   produces = "text/json;charset=UTF-8")
		 @ResponseBody
		 public String  BetterWay_suggestAdmin_Results(
				 @RequestParam HashMap<String, String> params, HttpSession session) throws Throwable{
			 ObjectMapper mapper = new ObjectMapper();
			 Map<String, Object> modelMap = new HashMap<String, Object>();
			 try {
				 
			
				 params.put("sNO",  String.valueOf(session.getAttribute("sNO")));
				 params.put("sID",  String.valueOf(session.getAttribute("sID")));
				 params.put("sPW",  String.valueOf(session.getAttribute("sPW")));
				 int cnt =iAdmin_Service.resultSug(params);
				 
			 }catch(Throwable e){
				 e.printStackTrace();
				 modelMap.put("msg", "error");
			 }
			 return mapper.writeValueAsString(modelMap);
		 }
	
	//건의게시판작성
	@RequestMapping(value ="/BetterWay_suggestAdmin_Write")
	public ModelAndView BetterWay_suggestAdmin_Write(ModelAndView mav) {
		
		mav.setViewName("admin/BetterWay_suggestAdmin_Write");
		
		return mav;
	}
	

	
	//게시판리스트
	@RequestMapping(value ="/BetterWay_suggestAdmin")
	public ModelAndView BetterWay_suggestAdmin(ModelAndView mav,
			@RequestParam HashMap<String, String> params) {
		
		try {
			int userPage =1;
			int noticePage =1;
			
			if(params.get("userPage") != null) {
				userPage = Integer.parseInt(params.get("userPage"));
			}
			
			if(params.get("noticePage") != null) {
				userPage = Integer.parseInt(params.get("noticePage"));
			}
			
			mav.addObject("userPage",userPage);
			mav.addObject("noticePage",noticePage);
			
			mav.setViewName("admin/BetterWay_suggestAdmin");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	//게시판리스트 목록가져오기
	@RequestMapping(value="/BetterWay_suggestAdmins",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_suggestAdmins(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> modelMap =new HashMap<String, Object>();
		try {
			
			int userPage=Integer.parseInt(params.get("userPage"));
			int noticePage=Integer.parseInt(params.get("noticePage"));
			//유저최대갯수
			int userCnt = iAdmin_Service.getUserCnt(params);
			//공지최대갯수
			int noticeCnt = iAdmin_Service.getNoticeCnt(params);
			
			//유저현재페이지 , 유저최대갯수
			PagingBean userPb = iPagingService.getPagingBean(userPage, userCnt) ;
			
			//유저현재페이지 , 유저최대갯수
			PagingBean noticePb = iPagingService.getPagingBean(noticePage, noticeCnt) ;
			
			params.put("userStartCnt", Integer.toString(userPb.getStartCount()));
			params.put("userEndCnt", Integer.toString(userPb.getEndCount()));
			
			params.put("noticeStartCnt", Integer.toString(noticePb.getStartCount()));
			params.put("noticeEndCnt", Integer.toString(noticePb.getEndCount()));
			
			List<HashMap<String, String>> userList
			=iAdmin_Service.getUserList(params);
			
			List<HashMap<String,String>> noticeList
			=iAdmin_Service.getNoticeList(params);
			
			modelMap.put("userlist",userList);
			modelMap.put("noticelist",noticeList);
			
			modelMap.put("userpb", userPb);
			modelMap.put("noticepb", noticePb);
			modelMap.put("userCnt",userCnt);
			modelMap.put("noticeCnt",noticeCnt);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
		
		
		
	}
		//건의게시물삭제
		@RequestMapping(value="/BetterWay_suggestAdmin_Deletes",
				method=RequestMethod.POST,
				produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String BetterWay_suggestAdmin_Deletes(
			@RequestParam HashMap<String, String>params,HttpSession session) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			 params.put("sNO",  String.valueOf(session.getAttribute("sNO")));
			
			
			int cnt = iAdmin_Service.deleteSug(params);
			
			if(cnt>0) {
				modelMap.put("msg","success");
			iboard_Service.deleteSugComm(params);
			}else {
				modelMap.put("msg","failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}
		
		return mapper.writeValueAsString(modelMap);
		}
		
		
		//건의게시물유저선택삭제
		 @RequestMapping(value = "/BetterWay_suggestCheckUserDeletes",
		 		 method = RequestMethod.POST,
		 		 produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String BetterWay_suggestCheckUserDeletes(
			 @RequestParam(value="userCheck[]") List<Integer> list,
			 HttpSession session
				) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		 try {
			 HashMap<String, Object> params=new HashMap<String, Object>();
			 params.put("sNO",  String.valueOf(session.getAttribute("sNO")));
			 params.put("mapList", list);
			 
			int chk = iAdmin_Service.checkDeleteSug(params);
			if(chk == 0) {
				int comm = iAdmin_Service.checkDeleteSugComm(params);
				modelMap.put("msg","failed");
			}else {
				modelMap.put("msg","success");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		 return mapper.writeValueAsString(modelMap);
		}
		 
			//건의게시물공지선택삭제
		 @RequestMapping(value = "/BetterWay_suggestCheckNoticeDeletes",
		 		 method = RequestMethod.POST,
		 		 produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String BetterWay_suggestCheckNoticeDeletes(
			 @RequestParam(value="noticeCheck[]") List<Integer> list,
			 HttpSession session
				) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();
		 try {
			 HashMap<String, Object> params=new HashMap<String, Object>();
			 params.put("sNO",  String.valueOf(session.getAttribute("sNO")));
			 params.put("mapList", list);
			int chk = iAdmin_Service.checkDeleteSug(params);
			if(chk == 0) {
				
				modelMap.put("msg","failed");
			}else {
				modelMap.put("msg","success");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		 return mapper.writeValueAsString(modelMap);
		}
		 
		 
		 
			//건의게시물작성완료
		 @RequestMapping(value = "/BetterWay_suggestAdmin_Writes",
		 		 method = RequestMethod.POST,
		 		 produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String BetterWay_suggestAdmin_Writes(
			 @RequestParam HashMap<String, String> params,HttpSession session
				) throws Throwable{
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String, Object> modelMap = new HashMap<String, Object>();
		 try {
			 
			 params.put("sNO",  String.valueOf(session.getAttribute("sNO")));
			 params.put("sID",  String.valueOf(session.getAttribute("sID")));
			 params.put("sPW",  String.valueOf(session.getAttribute("sPW")));
			int add = iAdmin_Service.insertSugAdmin(params);
			if(add == 0) {
				modelMap.put("msg","failed");
			}else {
				modelMap.put("msg","success");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		 return mapper.writeValueAsString(modelMap);
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
	
	//냉방상세
	@RequestMapping(value="/BetterWay_infocoolingAdmin_Detail")
	   public  ModelAndView BetterWay_infocoolingAdmin_Detail(
			   @RequestParam HashMap<String, String> params,ModelAndView mav)throws Throwable{
		   try {
			   HashMap<String, String> data = iAdmin_Service.getcoolingDetail(params);
			   
			   mav.addObject("data",data);
			   
			   mav.setViewName("admin/BetterWay_infocoolingAdmin_Detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   return mav;
	   }
	
	//냉방등록
	 @RequestMapping(value="BetterWay_infocoolingAdmin_Write")
	   public ModelAndView BetterWay_infocoolingAdmin_Write(ModelAndView mav) {
		   
		   mav.setViewName("admin/BetterWay_infocoolingAdmin_Write");
		   
		   return mav;
	   }
	 
	 @RequestMapping(value = "/BetterWay_infocoolingAdmin_Writes",
			   method = RequestMethod.POST,
			   produces = "text/json;charset=UTF-8")
		 @ResponseBody
		 public String BetterWay_infocoolingAdmin_Writes(
				 @RequestParam HashMap<String, String> params, HttpSession session) throws Throwable{
			 ObjectMapper mapper = new ObjectMapper();
			 Map<String, Object> modelMap = new HashMap<String, Object>();
			 try {
				 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
				 int cnt = iAdmin_Service.addcooling(params);
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
	 
	 //냉방수정
	 @RequestMapping(value="BetterWay_infocoolingAdmin_Update")
	   public ModelAndView BetterWay_infocoolingAdmin_Update(
			   @RequestParam HashMap<String, String> params,
			   ModelAndView mav)throws Throwable {
			
			HashMap<String, String> data = iAdmin_Service.getc(params);
			
			mav.addObject("data",data);
			
			   mav.setViewName("admin/BetterWay_infocoolingAdmin_Update");
				return mav;

			}

		@RequestMapping(value="/BetterWay_infocoolingAdmin_Updates",
				method=RequestMethod.POST,
				produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String BetterWay_infocoolingAdmin_Updates(
			@RequestParam HashMap<String, String>params, HttpSession session) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			params.put("sNO", String.valueOf(session.getAttribute("sNO")));
			int cnt = iAdmin_Service.updateS(params);
			
			if(cnt>0) {
				modelMap.put("msg","success");
			}else {
				modelMap.put("msg","failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}
		
		return mapper.writeValueAsString(modelMap);
		}
		
	 //냉방 삭제
	 @RequestMapping(value = "/BetterWay_infocoolingAdmin_Deletes",
	 		 method = RequestMethod.POST,
	 		 produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String BetterWay_infocoolingAdmin_Deletes(
		 @RequestParam HashMap<String, String>params) throws Throwable{
	 ObjectMapper mapper = new ObjectMapper();
	 Map<String, Object> modelMap = new HashMap<String, Object>();
	 
	 try {
		 int cnt = iAdmin_Service.deletecooling(params);
		 if(cnt > 0) {
			 modelMap.put("msg", "success");
		 }else {
			 modelMap.put("msg", "failed");
		 }
	} catch (Exception e) {
		e.printStackTrace();
		modelMap.put("msg", "error");
	}
	 return mapper.writeValueAsString(modelMap);
	}

	 //운임리스트
	 @RequestMapping(value="/infoAdminguide_List",
	   		   method = RequestMethod.POST,
	   		   produces = "text/json;charset=UTF-8")
	 @ResponseBody //ajax때 꼭 필요
	 public String infoAdminguide_List(
		@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		//목록 취득
			List<HashMap<String,String>> list= iAdmin_Service.guideList(params);
			
			modelMap.put("list", list);
			
		return mapper.writeValueAsString(modelMap);
	 }
	 
	 //운임상세
		@RequestMapping(value="/BetterWay_infoguideAdmin_Detail")
		   public  ModelAndView BetterWay_infoguideAdmin_Detail(
				   @RequestParam HashMap<String, String> params,ModelAndView mav)throws Throwable{
			   try {
				   HashMap<String, String> data = iAdmin_Service.getguideDetail(params);
				   
				   mav.addObject("data",data);
				   
				   mav.setViewName("admin/BetterWay_infoguideAdmin_Detail");
			} catch (Exception e) {
				e.printStackTrace();
			}
			   return mav;
		   }
		//운임 등록
		 @RequestMapping(value="BetterWay_infoguideAdmin_Write")
		   public ModelAndView BetterWay_infoguideAdmin_Write(ModelAndView mav) {
			   
			   mav.setViewName("admin/BetterWay_infoguideAdmin_Write");
			   
			   return mav;
		   }
		 
		 @RequestMapping(value = "/BetterWay_infoguideAdmin_Writes",
				   method = RequestMethod.POST,
				   produces = "text/json;charset=UTF-8")
			 @ResponseBody
			 public String BetterWay_infoguideAdmin_Writes(
					 @RequestParam HashMap<String, String> params,HttpSession session) throws Throwable{
				 ObjectMapper mapper = new ObjectMapper();
				 Map<String, Object> modelMap = new HashMap<String, Object>();
				 try {
					 params.put("sNO", String.valueOf(session.getAttribute("sNO")));
					 int cnt = iAdmin_Service.addguide(params);
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
		//운임 수정
		@RequestMapping(value="BetterWay_infoguideAdmin_Update")
		   public ModelAndView BetterWay_infoguideAdmin_Update(
				   @RequestParam HashMap<String, String> params,
				   ModelAndView mav)throws Throwable {
				
				HashMap<String, String> data = iAdmin_Service.getg(params);
				
				mav.addObject("data",data);
				
				   mav.setViewName("admin/BetterWay_infoguideAdmin_Update");
					return mav;

				}

			@RequestMapping(value="/BetterWay_infoguideAdmin_Updates",
					method=RequestMethod.POST,
					produces = "text/json;charset=UTF-8")
			@ResponseBody
			public String BetterWay_infoguideAdmin_Updates(
				@RequestParam HashMap<String, String>params,HttpSession session) throws Throwable{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			try {
				params.put("sNO", String.valueOf(session.getAttribute("sNO")));
				int cnt = iAdmin_Service.updateG(params);
				
				if(cnt>0) {
					modelMap.put("msg","success");
				}else {
					modelMap.put("msg","failed");
				}
			} catch (Throwable e) {
				e.printStackTrace();
				modelMap.put("msg","error");
			}
			
			return mapper.writeValueAsString(modelMap);
			}
			//운임 삭제
			 @RequestMapping(value = "/BetterWay_infoguideAdmin_Deletes",
			 		 method = RequestMethod.POST,
			 		 produces = "text/json;charset=UTF-8")
			@ResponseBody
			public String BetterWay_infoguideAdmin_Deletes(
				 @RequestParam HashMap<String, String>params) throws Throwable{
			 ObjectMapper mapper = new ObjectMapper();
			 Map<String, Object> modelMap = new HashMap<String, Object>();
			 
			 try {
				 int cnt = iAdmin_Service.deleteguide(params);
				 if(cnt > 0) {
					 modelMap.put("msg", "success");
				 }else {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			 return mapper.writeValueAsString(modelMap);
			}
}
