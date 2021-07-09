package com.gdj35.betterway.web.Admin.Service;

import java.util.HashMap;
import java.util.List;

public interface IAdmin_Service {
	
	public HashMap<String,String> getAdmin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getDetail(HashMap<String, String> params)throws Throwable;

	public int addT(HashMap<String, String> params)throws Throwable;

	public int deleteT(HashMap<String, String> params)throws Throwable;

	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params)throws Throwable;
	
	public int addcooling(HashMap<String, String> params)throws Throwable;
	
	public List<HashMap<String, String>> guideList(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getguideDetail(HashMap<String, String> params)throws Throwable;

	public int updateHT(HashMap<String, String> params) throws Throwable;

	public int deletecooling(HashMap<String, String> params)throws Throwable;

	


	
	public HashMap<String, String> getc(HashMap<String, String> params) throws Throwable;
	
	public int updateS(HashMap<String, String> params) throws Throwable;
	
}