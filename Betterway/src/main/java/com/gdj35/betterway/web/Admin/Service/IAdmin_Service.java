package com.gdj35.betterway.web.Admin.Service;

import java.util.HashMap;

public interface IAdmin_Service {
	
	public HashMap<String,String> getAdmin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getDetail(HashMap<String, String> params)throws Throwable;

	public int addT(HashMap<String, String> params)throws Throwable;

<<<<<<< HEAD
	public int deleteT(HashMap<String, String> params)throws Throwable;

=======
	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params)throws Throwable;
>>>>>>> branch 'main' of https://github.com/wlgPrk/GD35_BetterWay.git
}
