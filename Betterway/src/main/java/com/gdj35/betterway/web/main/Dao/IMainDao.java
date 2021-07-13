package com.gdj35.betterway.web.main.Dao;

import java.util.HashMap;
import java.util.List;

public interface IMainDao {

	public List<HashMap<String, String>> SubwayList(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getChList(HashMap<String, String> params)throws Throwable;

}
