package com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Dao;

import java.util.HashMap;
import java.util.List;

public interface IEstaDao {

	public List<HashMap<String, String>> EstaList(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> happyList(HashMap<String, String> params)throws Throwable;

}