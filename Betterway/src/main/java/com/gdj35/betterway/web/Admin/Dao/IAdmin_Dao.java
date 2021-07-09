package com.gdj35.betterway.web.Admin.Dao;

import java.util.HashMap;
import java.util.List;


public interface IAdmin_Dao {
	
	public  HashMap<String, String> getAdmin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getHDetail(HashMap<String, String> params)throws Throwable;

	public int addHT(HashMap<String, String> params)throws Throwable;
	
	public int updateHT(HashMap<String, String> params)throws Throwable;

	public int deleteHT(HashMap<String, String> params)throws Throwable;

	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params)throws Throwable;

	public int addcooling(HashMap<String, String> params)throws Throwable;

	public List<HashMap<String, String>> guideList(HashMap<String, String> params)throws Throwable;
	
	public HashMap<String, String> getguideDetail(HashMap<String, String> params)throws Throwable;

	public int deletecooling(HashMap<String, String> params)throws Throwable;
	
	public HashMap<String, String> getc(HashMap<String, String> params) throws Throwable;
	
	public int updateS(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getCDetail(HashMap<String, String> params)throws Throwable;
	
}
