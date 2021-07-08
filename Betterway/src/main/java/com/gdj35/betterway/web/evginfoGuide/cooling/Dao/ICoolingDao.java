package com.gdj35.betterway.web.evginfoGuide.cooling.Dao;

import java.util.HashMap;
import java.util.List;

public interface ICoolingDao {
	public List<HashMap<String, String>> getCar(HashMap<String, String> params) throws Throwable;
	public List<HashMap<String, String>> coolingList(HashMap<String, String> params) throws Throwable;
}
