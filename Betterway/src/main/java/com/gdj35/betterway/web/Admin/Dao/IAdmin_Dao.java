package com.gdj35.betterway.web.Admin.Dao;

import java.util.HashMap;


public interface IAdmin_Dao {
	
	public  HashMap<String, String> getAdmin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getDetail(HashMap<String, String> params)throws Throwable;

	public int addT(HashMap<String, String> params)throws Throwable;


	public int deleteT(HashMap<String, String> params)throws Throwable;


	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params)throws Throwable;

}
