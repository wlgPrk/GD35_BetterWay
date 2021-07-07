package com.gdj35.betterway.web.Admin.Service;

import java.util.HashMap;

public interface IAdmin_Service {
	
	public HashMap<String,String> getAdmin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getDetail(HashMap<String, String> params)throws Throwable;

}
