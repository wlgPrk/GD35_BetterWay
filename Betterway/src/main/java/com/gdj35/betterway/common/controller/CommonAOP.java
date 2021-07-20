package com.gdj35.betterway.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

@Aspect
public class CommonAOP {
	//Pointcut -> 적용범위
	//@Pointcut(범위설정)
	/*
	 * 범위
	 * execution -> include필터
	 * !execution -> exclude필터
	 * * -> 모든것
	 * *(..) -> 모든 메소드
	 * .. -> 모든 경로
	 * && -> 필터 추가
	 */
	@Pointcut("execution(* com.gdj35.betterway..Admin_Controller.*(..))"
			+"&& !execution(* com.gdj35.betterway..Admin_Controller.BetterWay_login*(..))"
			+"&& !execution(* com.gdj35.betterway..Admin_Controller.BerrerWay_logout*(..))"
			+"&& !execution(* com.gdj35.betterway..Admin_Controller.*s(..))")
	public void testAOP() {}
	

	
	//ProceedingJoinPoint -> 대상 적용 이벤트 필터
	/*
	 * @Before -> 메소드 실행 전
	 * @After -> 메소드 실행 후
	 * @After-returning -> 메소드 정상실행 후
	 * @After-throwing -> 메소드 예외 발생 후
	 * @Around -> 모든 동작시점
	 */
	@Around("testAOP()")
	public ModelAndView testAOP(ProceedingJoinPoint joinPoint)
														throws Throwable {
		ModelAndView mav = new ModelAndView();
		
		//Request 객체 취득
		HttpServletRequest request
		= ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("sNO") != null) {//로그인상태일시
			mav =(ModelAndView) joinPoint.proceed();// 기존이벤트처리행위 를이어서한다
		}else {// 비로그인상태
			mav.setViewName("redirect:BetterWay_loginAdmin");
		}
		
		
		return mav;
	}
}













